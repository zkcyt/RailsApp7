class AjaxController < ApplicationController
  layout 'ajax'
  require 'net/https' # この一行を追加する

  def index

  end

  # def data
    # @ajax_data = Person.find 1
  # end

  def data
      url = URI('https://news.yahoo.co.jp/pickup/sports/rss.xml')
      https = Net::HTTP.new(url.host,443)
      https.use_ssl = true
      https.ca_file = 'GTE_CyberTrust_Global_Root.pem'
      https.verify_mode=OpenSSL::SSL::VERIFY_NONE
      https.verify_depth = 5
      response = https.get(url)
      @data = Hash.from_xml(response.body).to_json.html_safe
      logger.info @data
  end

end
