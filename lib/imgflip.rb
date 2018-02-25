require 'imgflip/version'
require 'net/http'
require 'json'

module Imgflip
  IMGLFIP_USERNAME = ENV['IMGFLIP_USERNAME'] || 'imgflip_hubot'
  IMGLFIP_PASSWORD = ENV['IMGLFIP_PASSWORD'] || 'imgflip_hubot'

  def self.get_memes
    response = Net::HTTP.get(URI.parse('https://api.imgflip.com/get_memes'))
    response_json = JSON.parse(response)

    raise response_json['error_message'] unless response_json['success'] == true

    response_json['data']['memes']
  end

  def self.caption_image(template_id, text0, text1)
    response = Net::HTTP.post_form(URI.parse('https://api.imgflip.com/caption_image'),
                                   template_id: template_id,
                                   text0: text0,
                                   text1: text1,
                                   username: IMGLFIP_USERNAME,
                                   password: IMGLFIP_PASSWORD)
    response_json = JSON.parse(response.body)

    raise response_json['error_message'] unless response_json['success'] == true

    response_json['data']['url']
  end
end
