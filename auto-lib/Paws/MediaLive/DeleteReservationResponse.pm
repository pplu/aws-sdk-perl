
package Paws::MediaLive::DeleteReservationResponse;
  use Moo;
  use Types::Standard qw/Str Int Num/;
  use Paws::MediaLive::Types qw/MediaLive_Tags MediaLive_ReservationResourceSpecification/;
  has Arn => (is => 'ro', isa => Str);
  has Count => (is => 'ro', isa => Int);
  has CurrencyCode => (is => 'ro', isa => Str);
  has Duration => (is => 'ro', isa => Int);
  has DurationUnits => (is => 'ro', isa => Str);
  has End => (is => 'ro', isa => Str);
  has FixedPrice => (is => 'ro', isa => Num);
  has Name => (is => 'ro', isa => Str);
  has OfferingDescription => (is => 'ro', isa => Str);
  has OfferingId => (is => 'ro', isa => Str);
  has OfferingType => (is => 'ro', isa => Str);
  has Region => (is => 'ro', isa => Str);
  has ReservationId => (is => 'ro', isa => Str);
  has ResourceSpecification => (is => 'ro', isa => MediaLive_ReservationResourceSpecification);
  has Start => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => MediaLive_Tags);
  has UsagePrice => (is => 'ro', isa => Num);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Count' => {
                            'type' => 'Int'
                          },
               'ReservationId' => {
                                    'type' => 'Str'
                                  },
               'Tags' => {
                           'type' => 'MediaLive_Tags',
                           'class' => 'Paws::MediaLive::Tags'
                         },
               'Duration' => {
                               'type' => 'Int'
                             },
               'Arn' => {
                          'type' => 'Str'
                        },
               'End' => {
                          'type' => 'Str'
                        },
               'CurrencyCode' => {
                                   'type' => 'Str'
                                 },
               'FixedPrice' => {
                                 'type' => 'Num'
                               },
               'OfferingId' => {
                                 'type' => 'Str'
                               },
               'ResourceSpecification' => {
                                            'class' => 'Paws::MediaLive::ReservationResourceSpecification',
                                            'type' => 'MediaLive_ReservationResourceSpecification'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'UsagePrice' => {
                                 'type' => 'Num'
                               },
               'State' => {
                            'type' => 'Str'
                          },
               'OfferingDescription' => {
                                          'type' => 'Str'
                                        },
               'DurationUnits' => {
                                    'type' => 'Str'
                                  },
               'Region' => {
                             'type' => 'Str'
                           },
               'Start' => {
                            'type' => 'Str'
                          },
               'OfferingType' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'FixedPrice' => 'fixedPrice',
                       'CurrencyCode' => 'currencyCode',
                       'End' => 'end',
                       'Arn' => 'arn',
                       'Duration' => 'duration',
                       'Tags' => 'tags',
                       'ReservationId' => 'reservationId',
                       'Count' => 'count',
                       'OfferingType' => 'offeringType',
                       'Start' => 'start',
                       'Region' => 'region',
                       'DurationUnits' => 'durationUnits',
                       'OfferingDescription' => 'offeringDescription',
                       'State' => 'state',
                       'UsagePrice' => 'usagePrice',
                       'Name' => 'name',
                       'ResourceSpecification' => 'resourceSpecification',
                       'OfferingId' => 'offeringId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DeleteReservationResponse

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


=head2 ResourceSpecification => MediaLive_ReservationResourceSpecification

Resource configuration details


=head2 Start => Str

Reservation UTC start date and time in ISO-8601 format, e.g.
'2018-03-01T00:00:00'


=head2 State => Str

Current state of reservation, e.g. 'ACTIVE'

Valid values are: C<"ACTIVE">, C<"EXPIRED">, C<"CANCELED">, C<"DELETED">
=head2 Tags => MediaLive_Tags

A collection of key-value pairs


=head2 UsagePrice => Num

Recurring usage charge for each reserved resource, e.g. '157.0'


=head2 _request_id => Str


=cut

