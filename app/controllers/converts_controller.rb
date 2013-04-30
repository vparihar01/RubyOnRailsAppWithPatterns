class ConvertsController < ApplicationController
  def index
  end

  def create
  end

  def html2markdown
    redirect_to converts_path, :alert => "Please select any file!" if !params[:file].present? and return false
    @converted_markdown = file_upload params
    respond_to do |format|
      format.html
    end
  end

  def file_upload params
    require 'fileutils'
    tmp = params[:file].tempfile
    logger.info "#############111########### #{tmp.inspect}"
    file = File.join("public", params[:file].original_filename)
    logger.info "#############222########### #{file.inspect}"
    FileUtils.cp tmp.path, file
    @converted_markdown = ReverseMarkdown.parse_string(File.read(file))
    @converted_markdown1 = HtmlMassage.markdown((File.read(file)

    puts @converted_markdown.inspect
    logger.info "######################## #{@converted_markdown.inspect}"
    return @converted_markdown
    #FileUtils.rm file
  end

end
