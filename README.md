# Chill Shell

A Ruby on Rails application for managing employee earnings and payroll data.

## Description

Chill Shell is a web-based application that processes and manages employee earnings data. It supports CSV imports of earning records and provides an interface for tracking employee compensation.

## Requirements

* Ruby 3.2.0 or higher
* Rails 7.1
* PostgreSQL 14+

## Setup

1. Clone the repository:
```bash
git clone https://github.com/yourusername/chill_shell.git
cd chill_shell
```

2. Install dependencies:
```bash
bundle install
```

3. Database setup:
```bash
rails db:create db:migrate
```

## CSV Import

The application accepts earnings data in CSV format with the following columns:
- employee (employee_id)
- earningDate
- amount

Place your CSV file in `csv/BetaCoEarnings.csv` to import earnings data.

## Development

To run the development server:
```bash
rails server
```

Visit `http://localhost:3000` in your browser.

## Testing

Run the test suite with:
```bash
bundle exec rspec
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
