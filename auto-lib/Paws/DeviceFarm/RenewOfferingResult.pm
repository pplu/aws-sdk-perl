
package Paws::DeviceFarm::RenewOfferingResult;
  use Moose;
  has OfferingTransaction => (is => 'ro', isa => 'Paws::DeviceFarm::OfferingTransaction', traits => ['NameInRequest'], request_name => 'offeringTransaction' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::RenewOfferingResult

=head1 ATTRIBUTES


=head2 OfferingTransaction => L<Paws::DeviceFarm::OfferingTransaction>

Represents the status of the offering transaction for the renewal.


=head2 _request_id => Str


=cut

1;