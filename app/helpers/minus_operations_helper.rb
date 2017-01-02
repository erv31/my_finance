module MinusOperationsHelper
  def calc_sum_of_mo(operations)
    operations.inject(0) { |sum, o| sum + o.sum }   
  end 
end
