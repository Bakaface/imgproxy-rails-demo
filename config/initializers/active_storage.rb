ActiveSupport.on_load(:active_storage_blob) do
  ::ActiveStorage::Blob.include Extensions::ActiveStorage
end
