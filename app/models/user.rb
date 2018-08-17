class User < ApplicationRecord
	has_attached_file :avatar,
                    :storage => :s3,
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def s3_credentials
    {:bucket => "bindu-bhashwith", :access_key_id => "AKIAINP7BCTITT5TL3RA", :secret_access_key => "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",
     :s3_host_name => "s3-ap-south-1.amazonaws.com"}
  end
end
