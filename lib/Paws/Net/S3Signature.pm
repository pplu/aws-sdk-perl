package Paws::Net::S3Signature;
  use Moose::Role;
  requires 'service';

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

    $request->header( 'Host' => $self->endpoint_host );

    my $sig = Net::Amazon::Signature::V4->new( $self->access_key, $self->secret_key, $self->region, $self->service );
    my $signed_req = $sig->sign( $request );
    return $signed_req;

  }
1;
