#require 'carrierwave/storage/abstract'
#require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
	config.fog_provider = 'fog/aws'
	config.fog_credentials = {
		:provider 				=> 'AWS', 
		:aws_access_key_id 		=> ENV['AKIAJGF7353JFNM6GFMQ'],
		:aws_secret_access_key 	=> ENV['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']
	}

	config.storage = :fog
	config.fog_directory = ENV['AWS_BUCKET']
	config.fog_public	 = false
end