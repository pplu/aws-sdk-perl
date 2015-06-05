package Paws::Net::XMLResponse {
  use Moose::Role;
  use XML::Simple qw//;
  use Carp qw(croak);

  sub error_to_exception {
    my ($self, $struct, $call_object, $http_status, $content, $headers) = @_;

    my ($error, $request_id);

    if (exists $struct->{Errors}){
      $error = $struct->{Errors}->[0]->{Error};
    } elsif (exists $struct->{Error}){
      $error = $struct->{Error};
    } else {
      die "Unrecognized error message format";
    }

    if (exists $struct->{RequestId}) {
      $request_id = $struct->{RequestId};
    } elsif (exists $struct->{RequestID}){
      $request_id = $struct->{RequestID};
    } else {
      die "Cannot find RequestId in error message"
    }

    Paws::Exception->new(
      message => $error->{Message}, 
      code => $error->{Code}, 
      request_id => $request_id
    );
  }

  sub unserialize_response {
    my ($self, $data) = @_;
    my $xml = XML::Simple::XMLin( $data,
            ForceArray    => qr/(?:item|Errors)/i,
            KeyAttr       => '',
            SuppressEmpty => undef,
    );
    return $xml;
  }
}

1;
