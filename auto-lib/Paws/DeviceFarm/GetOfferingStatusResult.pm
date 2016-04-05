
package Paws::DeviceFarm::GetOfferingStatusResult;
  use Moose;
  has Current => (is => 'ro', isa => 'HashRef[Paws::DeviceFarm::OfferingStatus]', traits => ['Unwrapped'], xmlname => 'current' );
  has NextPeriod => (is => 'ro', isa => 'HashRef[Paws::DeviceFarm::OfferingStatus]', traits => ['Unwrapped'], xmlname => 'nextPeriod' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetOfferingStatusResult

=head1 ATTRIBUTES


=head2 Current => HashRef[L<Paws::DeviceFarm::OfferingStatus>]

When specified, gets the offering status for the current period.



=head2 NextPeriod => HashRef[L<Paws::DeviceFarm::OfferingStatus>]

When specified, gets the offering status for the next period.



=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.




=cut

1;