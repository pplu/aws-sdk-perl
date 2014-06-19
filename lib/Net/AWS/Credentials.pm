package Net::AWS::Credentials {
	use Moose;

	has 'access_key' => (
		is		=> 'ro',
		default => '',
	);

	has 'secret_key' => (
		is		=> 'ro',
		default => '',
	);

	has 'session_token' => (
		is		=> 'ro',
		default => '',
	);

	has 'set' => (
		is		=> 'ro',
		default => false,
	);

	no Moose;
}

1;



