class Installment < ActiveRecord::Base
	validate :check_over_payment
	belongs_to :project
	validate :check_date
	validates_presence_of :details


	private
	def check_over_payment

	total_installment_amount = self.project.installments.sum(:amount) + self.amount
	if total_installment_amount > self.project.net_budget
		errors.add(:amount, "Payment exceeding")
	end
end
def check_date

    if self.installment_date < Date.today
      errors.add(:installment_date, "Should be lesser than Present Day")
    end

  end

end
