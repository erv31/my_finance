module PlusOperationsHelper
  def calc_sum_of_po(operations)
    operations.inject(0) { |sum, o| sum + o.sum }   
  end 
end

