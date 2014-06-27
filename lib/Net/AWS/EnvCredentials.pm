package Net::AWS::EnvCredentials {
	use Moose;

	extend 'Net::AWS::Credentials';

	sub BUILD {
		my $self = shift;

		$self->access_key = $ENV{AWS_ACCESS_KEY};
		$self->secret_key = $ENV{AWS_SECRET_KEY};
	}

	no Moose;
}

1;



