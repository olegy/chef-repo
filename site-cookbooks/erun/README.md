Sample custom cookbook ('erun' is the name of example application to be deployed)

What it does:
- creates 'web_user' (you will be able to log in under this user, since public key from the data_bag is added to authorized keys)
- installs required version of Ruby
- creates required folders for deploy
- generate database.yml in shared location
- creates database