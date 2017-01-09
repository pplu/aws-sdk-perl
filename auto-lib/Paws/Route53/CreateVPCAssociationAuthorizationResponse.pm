
package Paws::Route53::CreateVPCAssociationAuthorizationResponse;
  use Moose;
  has HostedZoneId => (is => 'ro', isa => 'Str', required => 1);
  has VPC => (is => 'ro', isa => 'Paws::Route53::VPC', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateVPCAssociationAuthorizationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZoneId => Str

The ID of the hosted zone that you authorized associating a VPC with.



=head2 B<REQUIRED> VPC => L<Paws::Route53::VPC>

The VPC that you authorized associating with a hosted zone.




=cut

