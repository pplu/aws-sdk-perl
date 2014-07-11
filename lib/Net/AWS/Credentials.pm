package Net::AWS::Credentials {
	use Moose;

	has 'access_key' => (
		is		=> 'ro',
	);

	has 'secret_key' => (
		is		=> 'ro',
	);

	has 'session_token' => (
		is		=> 'ro',
	);

	sub are_set {
		my $self = shift;

		return (defined $self->access_key && defined $self->secret_key);
	}

	no Moose;
}

1;



