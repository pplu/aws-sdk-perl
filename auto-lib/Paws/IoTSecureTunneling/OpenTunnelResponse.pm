
package Paws::IoTSecureTunneling::OpenTunnelResponse;
  use Moose;
  has DestinationAccessToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationAccessToken' );
  has SourceAccessToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceAccessToken' );
  has TunnelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tunnelArn' );
  has TunnelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tunnelId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTSecureTunneling::OpenTunnelResponse

=head1 ATTRIBUTES


=head2 DestinationAccessToken => Str

The access token the destination local proxy uses to connect to AWS IoT
Secure Tunneling.


=head2 SourceAccessToken => Str

The access token the source local proxy uses to connect to AWS IoT
Secure Tunneling.


=head2 TunnelArn => Str

The Amazon Resource Name for the tunnel. The tunnel ARN format is
C<arn:aws:tunnel:E<lt>regionE<gt>:E<lt>account-idE<gt>:tunnel/E<lt>tunnel-idE<gt>>


=head2 TunnelId => Str

A unique alpha-numeric tunnel ID.


=head2 _request_id => Str


=cut

1;