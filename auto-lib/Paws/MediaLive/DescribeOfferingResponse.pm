
package Paws::MediaLive::DescribeOfferingResponse;
  use Moo;
  use Types::Standard qw/Str Int Num/;
  use Paws::MediaLive::Types qw/MediaLive_ReservationResourceSpecification/;
  has Arn => (is => 'ro', isa => Str);
  has CurrencyCode => (is => 'ro', isa => Str);
  has Duration => (is => 'ro', isa => Int);
  has DurationUnits => (is => 'ro', isa => Str);
  has FixedPrice => (is => 'ro', isa => Num);
  has OfferingDescription => (is => 'ro', isa => Str);
  has OfferingId => (is => 'ro', isa => Str);
  has OfferingType => (is => 'ro', isa => Str);
  has Region => (is => 'ro', isa => Str);
  has ResourceSpecification => (is => 'ro', isa => MediaLive_ReservationResourceSpecification);
  has UsagePrice => (is => 'ro', isa => Num);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Arn' => 'arn',
                       'Duration' => 'duration',
                       'CurrencyCode' => 'currencyCode',
                       'FixedPrice' => 'fixedPrice',
                       'ResourceSpecification' => 'resourceSpecification',
                       'OfferingId' => 'offeringId',
                       'UsagePrice' => 'usagePrice',
                       'OfferingDescription' => 'offeringDescription',
                       'DurationUnits' => 'durationUnits',
                       'Region' => 'region',
                       'OfferingType' => 'offeringType'
                     },
  'types' => {
               'Region' => {
                             'type' => 'Str'
                           },
               'OfferingType' => {
                                   'type' => 'Str'
                                 },
               'OfferingDescription' => {
                                          'type' => 'Str'
                                        },
               'DurationUnits' => {
                                    'type' => 'Str'
                                  },
               'UsagePrice' => {
                                 'type' => 'Num'
                               },
               'OfferingId' => {
                                 'type' => 'Str'
                               },
               'ResourceSpecification' => {
                                            'type' => 'MediaLive_ReservationResourceSpecification',
                                            'class' => 'Paws::MediaLive::ReservationResourceSpecification'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CurrencyCode' => {
                                   'type' => 'Str'
                                 },
               'FixedPrice' => {
                                 'type' => 'Num'
                               },
               'Duration' => {
                               'type' => 'Int'
                             },
               'Arn' => {
                          'type' => 'Str'
                        }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DescribeOfferingResponse

=head1 ATTRIBUTES


=head2 Arn => Str

Unique offering ARN, e.g.
'arn:aws:medialive:us-west-2:123456789012:offering:87654321'


=head2 CurrencyCode => Str

Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g.
'USD'


=head2 Duration => Int

Lease duration, e.g. '12'


=head2 DurationUnits => Str

Units for duration, e.g. 'MONTHS'

Valid values are: C<"MONTHS">
=head2 FixedPrice => Num

One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT
offering


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


=head2 ResourceSpecification => MediaLive_ReservationResourceSpecification

Resource configuration details


=head2 UsagePrice => Num

Recurring usage charge for each reserved resource, e.g. '157.0'


=head2 _request_id => Str


=cut

