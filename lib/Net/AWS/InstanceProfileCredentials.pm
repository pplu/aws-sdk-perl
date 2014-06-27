package Net::AWS::InstanceProfileCredentials {
	use JSON;
	use Moose;

	use constant BASE_URL => 'http://169.254.169.254/latest/meta-data/iam/security-credentials/';
	extend 'Net::AWS::Credentials';

	has 'ua' => (
		is		=> 'ro',
		lazy	=> 1,
		default	=> sub {
			use HTTP::Tiny;
			HTTP::Tiny->new(
				'agent' => 'AWS Perl SDK',
			);
		}
	);

	has 'expiration' => (
		is		=> 'ro',
		isa		=> 'DateTime',
		default	=> sub {
			DateTime->from_epoch(epoch => 0); # need a better way to do this
		}
	);
			

	sub BUILD {
		my $self = shift;

		$self->_refresh;
	}

	# XXX: Raise exceptions if HTTP get didn't return success
	sub _refresh {
		my $self = shift;

		return if (($self->expiration - DateTime->now())->is_positive);

		my $r = $ua->get(BASE_URL);
		return unless $r->{success};

		$r = $ua->get(BASE_URL . $r->{content});
		return unless $r->{success};

		my $json = from_json($r->{content});

		$self->access_key = $json->{AccessKeyId};
		$self->secret_key = $json->{SecretAccessKey};
		$self->session_token = $json->{Token};
		$self->expiration = DateTime::Format::ISO8601->parse_datetime($json->{Expiration});

	}

	no Moose;
}

1;



