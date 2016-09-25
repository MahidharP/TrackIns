class Project < ActiveRecord::Base
	belongs_to :user
	has_many :installments

	before_save :calculate_net_budget

	def overdue_installments
		self.installments.where('status = ? AND installment_date < ?', "scheduled", Date.today)
	end

	def scheduled_installments
		self.installments.where('status = ? AND installment_date >= ?', "scheduled", Date.today)
	end

	private

	def calculate_net_budget
    self.net_budget = (self.total_budget - self.discount)
  end

end
