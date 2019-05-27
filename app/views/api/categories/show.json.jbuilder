json.category do
  json.set! @category.id do
    json.extract! @category, :id, :name
    json.project_ids @category.projects.pluck(:id)
  end
end

json.projects do
  @category.projects.each do |project|
    json.set! project.id do
      json.extract! project, :id, :title, :description, :creator_id, :category_id, :end_date, :funding_goal, :total_pledge_amount, :image_url
      json.category_name project.category.name
      json.creator_name project.creator.name
      json.creator_image_url asset_path(project.creator.image_url)
    end
  end
end
