require 'imgflip/version'
require 'net/http'

module Imgflip
  IMGLFIP_USERNAME = ENV['imglfip_username'] || 'imgflip_hubot'
  IMGLFIP_PASSWORD = ENV['imglfip_password'] || 'imgflip_hubot'

  def self.generate_meme(template_id, text0, text1)
    Net::HTTP.post_form(URI.parse('https://api.imgflip.com/caption_image'),
                        template_id: template_id, text0: text0, text1: text1,
                        username: IMGLFIP_USERNAME, password: IMGLFIP_PASSWORD)
  end
end
