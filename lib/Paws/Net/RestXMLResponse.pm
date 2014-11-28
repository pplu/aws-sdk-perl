package Paws::Net::RestXMLResponse {
  use Moose::Role;
  use XML::Simple qw//;
  use Carp qw(croak);
  
  sub _process_response {
    my ($self, $data) = @_;
    my $xml = XML::Simple::XMLin( $data,
            ForceArray    => qr/(?:item|Errors)/i,
            KeyAttr       => '',
            SuppressEmpty => undef,
    );
    if ( defined $xml->{Errors} ) {
      croak "Error: $data";
    }

    return $xml;
  }
}

1;
