require 'csv'

def parse
  path = 'BetaCoEarnings.csv'
  File.open(path) do |file|
    CSV.foreach(file, headers: true) do |row|
      p row
    end
  end
end


parse
