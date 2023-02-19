class RoomUploader < CarrierWave::Uploader::Base
  # Choose what kind of storage to use for this uploader:
  storage :aws

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Add an allowlist of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_allowlist
    %w(jpg jpeg gif png)
  end
end
