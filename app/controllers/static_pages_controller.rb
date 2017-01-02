class StaticPagesController < ApplicationController
  def home
    @plus_operations = PlusOperation.all
    @minus_operations = MinusOperation.all     
  end
end
