class ToolsController < ApplicationController

  def index
    @tools = Tool.all
  end

  def new
    @tool = Tool.new
  end

  def create
    tool= Tool.new(tool_params)
    if tool.save
      redirect_to tools_path
    else
      render :new
    end
  end

  def tool_params
    params.require(:tool).permit(:name,:quantity,:price)
  end

end
