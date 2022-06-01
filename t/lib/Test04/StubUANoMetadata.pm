package Test04::StubUANoMetadata;
  use Moose;

  sub get {
    my ($self, $url) = @_;

    if ($url eq 'http://169.254.169.254/latest/meta-data/iam/security-credentials/'){
      return { success => 1, content => "" };
    }
  }

  sub put {
    my ($self, $url, $args) = @_;

    if ( $url eq 'http://169.254.169.254/latest/api/token' && exists $args->{headers}->{'X-aws-ec2-metadata-token-ttl-seconds'} ) {
      return { success => 1, content => 'token' };
    }
    die "Unknown URL in StubUA $url";
  }
1;
