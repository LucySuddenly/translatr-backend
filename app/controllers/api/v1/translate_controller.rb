class Api::V1::TranslateController < ApplicationController

def new
  project_id = ENV["CLOUD_PROJECT_ID"]
  translate = Google::Cloud::Translate.new project: project_id
  text = params[:text]
  target = params[:language]
  translation = translate.translate text, to: target
  render translation
end

end
