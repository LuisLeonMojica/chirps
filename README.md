# chirps
## Chirps - Totally not a twitter clone

## Pre-requisites
Postgres server (v13) is required  highly recommended [PostgresApp](https://postgresapp.com/)

## Installation steps

1. [Install](https://rvm.io/rvm/install) or [update](https://rvm.io/rvm/upgrading) RVM  
    `rvm get stable`

2. Install Ruby 3.0.1
  `rvm install '3.0.1'`

3. Install Rails 6.1.3.1
  `gem install rails`

4. Install all gems
  `bundle`

5. Setup your environment variables
  ```
  DATABASE_ADDRESS: Postgres SQL host
  DATABASE_PORT: Postgres SQL host port
  DATABASE_NAME: Postgres SQL database name
  DATABASE_USER_NAME: Postgres SQL username
  DATABASE_PASSWORD: Postgres SQL password
  ```

6. Create your database
  `rails db:create`

7. Run all migrations
  `rails db:migrate`

8. Start the server
  `rails s`