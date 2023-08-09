# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  root 'posts#index'

  # direct :imgproxy_active_storage do |model, options|
  #   if model.is_a?(ActiveStorage::Variant) || model.is_a?(ActiveStorage::VariantWithRecord)
  #     transformation = model.variation.transformations
  #     width, height = transformation[:resize_to_limit] if transformation[:resize_to_limit]
  #     url = Rails.application.routes.url_helpers.url_for(model.blob)
  #     Imgproxy.url_for(url, width: width, height: height)
  #   else
  #     rails_storage_proxy_url(model, options)
  #   end
  # end
end
