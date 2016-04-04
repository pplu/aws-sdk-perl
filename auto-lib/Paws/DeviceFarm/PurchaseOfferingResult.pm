
package Paws::DeviceFarm::PurchaseOfferingResult;
  use Moose;
  has OfferingTransaction => (is => 'ro', isa => 'Paws::DeviceFarm::OfferingTransaction', traits => ['Unwrapped'], xmlname => 'offeringTransaction' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::PurchaseOfferingResult

=head1 ATTRIBUTES


=head2 OfferingTransaction => L<Paws::DeviceFarm::OfferingTransaction>

Represents the offering transaction for the purchase result.




=cut

1;