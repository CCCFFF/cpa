class Certificate < ActiveRecord::Base
#Need to add all 23 categories to credit_category method
  def credit_category
    @credit_category = ["Accounting and Auditing", "Consulting Services", "Ethics", "Management", "Personal Development", "Specialized Knowledge and Application", "Taxes"]
  end
end
