package Test04::StubUANoMetadata {
  use Moose;

  sub get {
    my ($self, $url) = @_;

    if ($url eq 'http://169.254.169.254/latest/meta-data/iam/security-credentials/'){
      return { success => 1, content => "" };
    }
  }
}

1;
