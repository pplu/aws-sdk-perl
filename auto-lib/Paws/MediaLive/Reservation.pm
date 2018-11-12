package Paws::MediaLive::Reservation;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Count => (is => 'ro', isa => 'Int', request_name => 'count', traits => ['NameInRequest']);
  has CurrencyCode => (is => 'ro', isa => 'Str', request_name => 'currencyCode', traits => ['NameInRequest']);
  has Duration => (is => 'ro', isa => 'Int', request_name => 'duration', traits => ['NameInRequest']);
  has DurationUnits => (is => 'ro', isa => 'Str', request_name => 'durationUnits', traits => ['NameInRequest']);
  has End => (is => 'ro', isa => 'Str', request_name => 'end', traits => ['NameInRequest']);
  has FixedPrice => (is => 'ro', isa => 'Num', request_name => 'fixedPrice', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has OfferingDescription => (is => 'ro', isa => 'Str', request_name => 'offeringDescription', traits => ['NameInRequest']);
  has OfferingId => (is => 'ro', isa => 'Str', request_name => 'offeringId', traits => ['NameInRequest']);
  has OfferingType => (is => 'ro', isa => 'Str', request_name => 'offeringType', traits => ['NameInRequest']);
  has Region => (is => 'ro', isa => 'Str', request_name => 'region', traits => ['NameInRequest']);
  has ReservationId => (is => 'ro', isa => 'Str', request_name => 'reservationId', traits => ['NameInRequest']);
  has ResourceSpecification => (is => 'ro', isa => 'Paws::MediaLive::ReservationResourceSpecification', request_name => 'resourceSpecification', traits => ['NameInRequest']);
  has Start => (is => 'ro', isa => 'Str', request_name => 'start', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has UsagePrice => (is => 'ro', isa => 'Num', request_name => 'usagePrice', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::Reservation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::Reservation object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UsagePrice => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::Reservation object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Reserved resources available to use

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


=head2 UsagePrice => Num

  Recurring usage charge for each reserved resource, e.g. '157.0'



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

