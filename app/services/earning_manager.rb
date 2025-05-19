
require "csv"

module Services
  class EarningManager < BaseService
    def initialize
      super()
    end

    def call
      path = "csv/BetaCoEarnings.csv"
      File.open(path) do |file|
        CSV.foreach(file, headers: true) do |row|
          employee = Employee.find_by(employee_id: row["employee"])

          next unless employee

          Earning.create!(
            employee: employee,
            earning_date: row["earningDate"],
            amount: row["amount"]
          )
          puts "Earnings saved: #{employee.name}"
        end
      end
    end
  end
end
