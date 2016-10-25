
package Paws::CloudHSM::ListAvailableZonesResponse;
  use Moose;
  has AZList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');


### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::ListAvailableZonesResponse

=head1 ATTRIBUTES


=head2 AZList => ArrayRef[Str|Undef]

The list of Availability Zones that have available AWS CloudHSM
capacity.




=cut

1;