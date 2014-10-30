Rails.configuration.stripe = {
  :publishable_key => 'pk_test_zLOh54Jw5zReDWw0jhXCn9PE',
  :secret_key      => 'sk_test_KZhIkJqYwGmQpI6MBGmAAjgd'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]