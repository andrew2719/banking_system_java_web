# Banking Application

This is a simple banking application developed using Java, JavaScript, and Maven. The application uses Hibernate for ORM and MySQL as the database.

## Features

- Account Creation
- Login
- Deposit
- Withdraw
- logout
- View Balance
- edit account details

## Setup and Installation

1. Clone the repository.
2. Install MySQL and setup the database using the details provided in `hibernate.cfg.xml`.
3. Run the application using your preferred IDE (IntelliJ IDEA is recommended).

## File Structure

- `hibernate.cfg.xml`: Contains the Hibernate configuration details.
- `CreateAccountServlet.java`: Handles the account creation process.
- `LoginServlet.java`: Handles the login process.
- And rest of the files are self-explanatory.

## Usage

- To create an account, make a POST request to `/CreateAccountServlet` with the required parameters.
- To login, make a POST request to `/LoginServlet` with the required parameters.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

[MIT](https://choosealicense.com/licenses/mit/)