
package Paws::Lightsail::GetStaticIpResult;
  use Moose;
  has StaticIp => (is => 'ro', isa => 'Paws::Lightsail::StaticIp', traits => ['NameInRequest'], request_name => 'staticIp' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetStaticIpResult

=head1 ATTRIBUTES


=head2 StaticIp => L<Paws::Lightsail::StaticIp>

An array of key-value pairs containing information about the requested
static IP.


=head2 _request_id => Str


=cut

1;