class AgriculturesController < ApplicationController

  def index
    @knowledges = Knowledge.all
  end

end