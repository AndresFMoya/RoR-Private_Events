# Private Events

  This project consist of building a site similar to a private Eventbrite which allows users to create events and then manage user signups. Users can create events and send invitations and parties (sound familiar?). Events take place at a specific date and at a location (which you can just store as a string, like “Andy’s House”).

## Getting started
  
  To get started with the app, first clone the repo and `cd` into the directory:
  
  ```
  $ git clone git@github.com:KerronKing/rails-private-events.git
  $ cd rails-private-events
  ```
  
  Then install the needed gems (while skipping any gems needed only in production):
  
  ```
  $ bundle install --without production
  ```
  
  Next, migrate the database:
  
  ```
  $ rails db:migrate
  ```
  
  Finally, run the test suite to verify that everything is working correctly:
  
  ```
  $ rails test
  ```
  
  If the test suite passes, you'll be ready to run the app in a local server:
  
  ```
  $ rails server
  ```

## Contributors

Kerron King [My GitHub Profile](https://github.com/KerronKing)
Andres F. Moya [My GitHub Profile](https://github.com/AndresFMoya)