class StaticPagesController < ApplicationController
  def home
    @plus_operations = PlusOperation.all    
  end
end
