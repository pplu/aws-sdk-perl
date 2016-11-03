
package Paws::DeviceFarm::RenewOfferingResult;
  use Moose;
  has OfferingTransaction => (is => 'ro', isa => 'Paws::DeviceFarm::OfferingTransaction', traits => ['NameInRequest'], request_name => 'offeringTransaction' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::RenewOfferingResult

=head1 ATTRIBUTES


=head2 OfferingTransaction => L<Paws::DeviceFarm::OfferingTransaction>

Represents the status of the offering transaction for the renewal.




=cut

1;