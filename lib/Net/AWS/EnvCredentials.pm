package Net::AWS::EnvCredentials {
	use Moose;

	extends 'Net::AWS::Credentials';

    #has '+access_key' => (default => sub { $ENV{AWS_ACCESS_KEY} });

	sub BUILD {
		my $self = shift;

		$self->access_key($ENV{AWS_ACCESS_KEY} || $ENV{AWS_ACCESS_KEY_ID});
		$self->secret_key($ENV{AWS_SECRET_KEY} || $ENV{AWS_SECRET_ACCESS_KEY});
		$self->session_token($ENV{AWS_SESSION_TOKEN});
	}

	no Moose;
}

1;



