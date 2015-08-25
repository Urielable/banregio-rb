# BanRegio

A super simple ruby wrapper for the BanRegio REST API. For more information checkout the [docs](https://banregio-api-doc-staging.herokuapp.com/).

## Table of contents

- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Installation

Add this line to your application's `Gemfile`:

```ruby
gem 'banregio'
```

And then execute:

```
% bundle
```

Or install it yourself as:

```
% gem install banregio
```

## Usage

This gem does not support the OAuth2 authentication flow, for that we recommend you to use the [omniauth-banregio gem](https://github.com/banregiolabs/omniauth-banregio).

**To continue make sure you have a valid access token obtained from the omniauth-banregio gem**

Start using the gem is super simple, you just need to instantiate a client:

```ruby
client = Banregio::APIClient.new("change_your_this_for_a_valid_access_token")
```

You can now start hitting the REST API. We currently have only support for 3 endpoints:

### Link Bank Account

```ruby
client.link_bank_account_for_client("12345678", pin: "1234", last_4_digits: "1234")
```

**Output:**

```ruby
#<Banregio::Models::DebitBankAccount:0x007fe009a73ca8 @id=1, 
	@card_number="************1234", @balance=423.00, 
	@account_number="025971450013", @clabe="058580259714500135">
```

It can also be a `CreditBankAccount` type, but don't worry, the SDK is smart enough to know that.

### Fetch Bank Accounts

```ruby
client.bank_accounts
```

**Output:**

```ruby
[#<Banregio::Models::DebitBankAccount:0x007fe009a73ca8 @id=1, 
	@card_number="************1234", @balance=423.00, 
	@account_number="025971450013", @clabe="058580259714500135">, 
	#<Banregio::Models::DebitBankAccount:0x007fe009a73ca8 @id=2, 
	@card_number="************4321", @balance=12343.00, 
	@account_number="025971450011", @clabe="058580259714500134">...]
```

### Fetch Bank Account Transactions

```ruby
client.transactions
```

**Output:**

```ruby
[#<Banregio::Models::Transaction:0x007fe009a73ca8 
	@transaction_number="12345", @reference_number="0987654", 
	@description="Some description", @amount=100.50, 
	@date=#<Date: 2015-09-16 ((2457282j,0s,0n),+0s,2299161j)>, 
	@business: #<Banregio::Models::Business:0x007fe009a73ca9 @id=1234, 
	@name="SEVEN ELEVEN", @activity_id=1234, 
	@activity_name="Tienda de conveniencia"...]
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/banregio/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


## License

Code released under the [MIT license](LICENSE.txt).