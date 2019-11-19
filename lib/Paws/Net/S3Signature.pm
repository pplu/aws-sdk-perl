package Paws::Net::S3Signature;
  use Moo::Role;
  requires 'service';

  sub BUILD {
    my $self = shift;

    # These calls are here so that when you construct
    # the object the endpoint information and the _region_for_signature
    # are calculated during construction. This is to avoid the fact that 
    # these attributes are lazy (because they depend on other attributes) 
    # and they don't get used until the first method is called, so if
    # they are incorrect, they don't throw until the first method is called.
    # It's much better to have them throw when $paws->service('...') is called
    # as this is the point where the user had specified "incorrect" information,
    # instead of the problem happening in the first method call.
    $self->endpoint;
    $self->_region_for_signature;
  }

  use Digest::SHA;
  use Net::Amazon::Signature::V4;

  sub sign {
    my ($self, $request) = @_;

    if ($self->session_token) {
      $request->header( 'X-Amz-Security-Token' => $self->session_token );
    }

    my $hasher = Digest::SHA->new(256);
    $hasher->add($request->content || q[]);
    $request->header('X-Amz-Content-Sha256' => $hasher->hexdigest);

    # AWS prefers X-Amz-Date but Net::Amazon::Signature::V4 only handles Date in the headerpackage Paws::Net::S3Signature;
    $request->header( 'Date' => $request->{'date'} );

    $request->header(
        'Host' => $self->endpoint->default_port == $self->endpoint->port
        ? $self->endpoint->host
        : $self->endpoint->host_port);

    my $sig = Net::Amazon::Signature::V4->new( $self->access_key, $self->secret_key, $self->region, $self->service );
    my $signed_req = $sig->sign( $request );
    return $signed_req;

  }
1;
