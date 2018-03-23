class AttachmentsUploader < CarrierWave::Uploader::Base
    storage :file
 
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

   def content_type_blacklist
    ['application/text', 'application/json']
  end
end

end
