
package Paws::MediaLive::DescribeReservationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Count => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'count');
  has CurrencyCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currencyCode');
  has Duration => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'duration');
  has DurationUnits => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'durationUnits');
  has End => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'end');
  has FixedPrice => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'fixedPrice');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has OfferingDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'offeringDescription');
  has OfferingId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'offeringId');
  has OfferingType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'offeringType');
  has Region => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'region');
  has ReservationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reservationId');
  has ResourceSpecification => (is => 'ro', isa => 'Paws::MediaLive::ReservationResourceSpecification', traits => ['NameInRequest'], request_name => 'resourceSpecification');
  has Start => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'start');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');
  has UsagePrice => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'usagePrice');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DescribeReservationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

Unique reservation ARN, e.g.
'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'


=head2 Count => Int

Number of reserved resources


=head2 CurrencyCode => Str

Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g.
'USD'


=head2 Duration => Int

Lease duration, e.g. '12'


=head2 DurationUnits => Str

Units for duration, e.g. 'MONTHS'

Valid values are: C<"MONTHS">
=head2 End => Str

Reservation UTC end date and time in ISO-8601 format, e.g.
'2019-03-01T00:00:00'


=head2 FixedPrice => Num

One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT
offering


=head2 Name => Str

User specified reservation name


=head2 OfferingDescription => Str

Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and
standard VQ in US West (Oregon)'


=head2 OfferingId => Str

Unique offering ID, e.g. '87654321'


=head2 OfferingType => Str

Offering type, e.g. 'NO_UPFRONT'

Valid values are: C<"NO_UPFRONT">
=head2 Region => Str

AWS region, e.g. 'us-west-2'


=head2 ReservationId => Str

Unique reservation ID, e.g. '1234567'


=head2 ResourceSpecification => L<Paws::MediaLive::ReservationResourceSpecification>

Resource configuration details


=head2 Start => Str

Reservation UTC start date and time in ISO-8601 format, e.g.
'2018-03-01T00:00:00'


=head2 State => Str

Current state of reservation, e.g. 'ACTIVE'

Valid values are: C<"ACTIVE">, C<"EXPIRED">, C<"CANCELED">, C<"DELETED">
=head2 UsagePrice => Num

Recurring usage charge for each reserved resource, e.g. '157.0'


=head2 _request_id => Str


=cut

