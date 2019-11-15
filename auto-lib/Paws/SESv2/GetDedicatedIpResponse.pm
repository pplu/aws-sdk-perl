
package Paws::SESv2::GetDedicatedIpResponse;
  use Moose;
  has DedicatedIp => (is => 'ro', isa => 'Paws::SESv2::DedicatedIp');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetDedicatedIpResponse

=head1 ATTRIBUTES


=head2 DedicatedIp => L<Paws::SESv2::DedicatedIp>

An object that contains information about a dedicated IP address.


=head2 _request_id => Str


=cut

