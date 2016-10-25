
package Paws::Route53::DisassociateVPCFromHostedZoneResponse;
  use Moose;
  has ChangeInfo => (is => 'ro', isa => 'Paws::Route53::ChangeInfo', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::DisassociateVPCFromHostedZoneResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeInfo => L<Paws::Route53::ChangeInfo>

A complex type that describes the changes made to your hosted zone.




=cut

