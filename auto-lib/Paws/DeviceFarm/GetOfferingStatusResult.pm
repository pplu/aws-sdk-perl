
package Paws::DeviceFarm::GetOfferingStatusResult;
  use Moose;
  has Current => (is => 'ro', isa => 'Paws::DeviceFarm::OfferingStatusMap', traits => ['NameInRequest'], request_name => 'current' );
  has NextPeriod => (is => 'ro', isa => 'Paws::DeviceFarm::OfferingStatusMap', traits => ['NameInRequest'], request_name => 'nextPeriod' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetOfferingStatusResult

=head1 ATTRIBUTES


=head2 Current => L<Paws::DeviceFarm::OfferingStatusMap>

When specified, gets the offering status for the current period.


=head2 NextPeriod => L<Paws::DeviceFarm::OfferingStatusMap>

When specified, gets the offering status for the next period.


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 _request_id => Str


=cut

1;