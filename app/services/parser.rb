require "csv"

def parse
  path = "BetaCoEarnings.csv"
  File.open(path) do |file|
    CSV.foreach(file, headers: true) do |row|
      employee = Employee.find(row["employee"])

      next unless employee

      Earning.save!(
        employee: employee,
        earning_date: row["earningDate"],
        amount: row["amount"]
      )
    end
  end
end


parse
