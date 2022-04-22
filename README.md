# CSU Life Run Website

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ gem install bundler -v 2.3.6
$ bundle _2.3.6_ config set --local without 'production'
$ bundle _2.3.6_ install
```

Next, migrate the database:

```
$ rails db:migrate
```

Then run the app in a local server:

```
$ rails server
```

## Development notes

The app may not be fully complete but there is some importaint info to tell the user_info

To be able to use the site as an admin you need to login with:

--The username:  username
--The password:  password

Only the admin can see all the users in the database via the admin tab.