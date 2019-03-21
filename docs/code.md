# 核心代码解释

```markdown
?> **Tip** 免责声明:您自行负责确定适当使用或重新分配工作并承担任何责任与您在本许可下行使权限相关的风险。
```

## 匹配三维可形变模型

> 输入16个参数

```cpp
inline std::pair<core::Mesh, fitting::RenderingParameters> fit_shape_and_pose(
    const morphablemodel::MorphableModel& morphable_model,
    const core::LandmarkCollection<Eigen::Vector2f>& landmarks, 
    const core::LandmarkMapper& landmark_mapper,
    int image_width, 
    int image_height, 
    const morphablemodel::EdgeTopology& edge_topology,
    const fitting::ContourLandmarks& contour_landmarks, 
    const fitting::ModelContour& model_contour,
    int num_iterations, 
    cpp17::optional<int> num_shape_coefficients_to_fit, 
    float lambda_identity,
    cpp17::optional<int> num_expression_coefficients_to_fit, 
    cpp17::optional<float> lambda_expressions,
    std::vector<float>& pca_shape_coefficients, 
    std::vector<float>& expression_coefficients,
    std::vector<Eigen::Vector2f>& fitted_image_points)
{···}
```
## 模型渲染并绘制窗口

```cpp
		// Render the model in a separate window using the estimated pose, shape and merged texture:
		core::Image4u rendering;
		auto modelview_no_translation = rendering_params.get_modelview();
		modelview_no_translation[3][0] = 0;
		modelview_no_translation[3][1] = 0;
		std::tie(rendering, std::ignore) = render::render(merged_mesh, modelview_no_translation, glm::ortho(-130.0f, 130.0f, -130.0f, 130.0f), 256, 256, render::create_mipmapped_texture(merged_isomap), true, false, false);
		cv::imshow("render", core::to_mat(rendering));

		cv::imshow("video", frame);
		auto key = cv::waitKey(30);
		if (key == 'q') break;
		if (key == 'r') {
			have_face = false;
			isomap_averaging = WeightedIsomapAveraging(60.f);
		}
		if (key == 's') {
			// save an obj + current merged isomap to the disk:
			const core::Mesh neutral_expression = morphablemodel::sample_to_mesh(morphable_model.get_shape_model().draw_sample(shape_coefficients), morphable_model.get_color_model().get_mean(), morphable_model.get_shape_model().get_triangle_list(), morphable_model.get_color_model().get_triangle_list(), morphable_model.get_texture_coordinates());
                        core::write_textured_obj(neutral_expression, "current_merged.obj");
			cv::imwrite("current_merged.isomap.png", merged_isomap);
		}
	}

	return EXIT_SUCCESS;
};
```

## 坐标

> 实时追踪并在窗口右上方显示三维坐标及自适应

```cpp
void draw_axes_topright(float r_x, float r_y, float r_z, cv::Mat image)
{
	const glm::vec3 origin(0.0f, 0.0f, 0.0f);
	const glm::vec3 x_axis(1.0f, 0.0f, 0.0f);
	const glm::vec3 y_axis(0.0f, 1.0f, 0.0f);
	const glm::vec3 z_axis(0.0f, 0.0f, 1.0f);

	const auto rot_mtx_x = glm::rotate(glm::mat4(1.0f), r_x, glm::vec3{ 1.0f, 0.0f, 0.0f });
	const auto rot_mtx_y = glm::rotate(glm::mat4(1.0f), r_y, glm::vec3{ 0.0f, 1.0f, 0.0f });
	const auto rot_mtx_z = glm::rotate(glm::mat4(1.0f), r_z, glm::vec3{ 0.0f, 0.0f, 1.0f });
	const auto modelview = rot_mtx_z * rot_mtx_x * rot_mtx_y;

	const auto viewport = fitting::get_opencv_viewport(image.cols, image.rows);
	const float aspect = static_cast<float>(image.cols) / image.rows;
	const auto ortho_projection = glm::ortho(-3.0f * aspect, 3.0f * aspect, -3.0f, 3.0f);
	const auto translate_topright = glm::translate(glm::mat4(1.0f), glm::vec3(0.7f, 0.65f, 0.0f));
	const auto o_2d = glm::project(origin, modelview, translate_topright * ortho_projection, viewport);
	const auto x_2d = glm::project(x_axis, modelview, translate_topright * ortho_projection, viewport);
	const auto y_2d = glm::project(y_axis, modelview, translate_topright * ortho_projection, viewport);
	const auto z_2d = glm::project(z_axis, modelview, translate_topright * ortho_projection, viewport);
	cv::line(image, cv::Point2f{ o_2d.x, o_2d.y }, cv::Point2f{ x_2d.x, x_2d.y }, { 0, 0, 255 });
	cv::line(image, cv::Point2f{ o_2d.x, o_2d.y }, cv::Point2f{ y_2d.x, y_2d.y }, { 0, 255, 0 });
	cv::line(image, cv::Point2f{ o_2d.x, o_2d.y }, cv::Point2f{ z_2d.x, z_2d.y }, { 255, 0, 0 });
};
```