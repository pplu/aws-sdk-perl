
package Paws::Route53::GetHostedZoneResponse;
  use Moose;
  has DelegationSet => (is => 'ro', isa => 'Paws::Route53::DelegationSet');
  has HostedZone => (is => 'ro', isa => 'Paws::Route53::HostedZone', required => 1);
  has VPCs => (is => 'ro', isa => 'ArrayRef[Paws::Route53::VPC]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetHostedZoneResponse

=head1 ATTRIBUTES


=head2 DelegationSet => L<Paws::Route53::DelegationSet>

A complex type that lists the Amazon Route 53 name servers for the
specified hosted zone.



=head2 B<REQUIRED> HostedZone => L<Paws::Route53::HostedZone>

A complex type that contains general information about the specified
hosted zone.



=head2 VPCs => ArrayRef[L<Paws::Route53::VPC>]

A complex type that contains information about the VPCs that are
associated with the specified hosted zone.




=cut

