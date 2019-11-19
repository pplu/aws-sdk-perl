# Generated from default/object.tt
package Paws::MediaLive::Reservation;
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

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Name' => 'name',
                       'State' => 'state',
                       'UsagePrice' => 'usagePrice',
                       'OfferingId' => 'offeringId',
                       'ResourceSpecification' => 'resourceSpecification',
                       'Start' => 'start',
                       'OfferingType' => 'offeringType',
                       'Region' => 'region',
                       'DurationUnits' => 'durationUnits',
                       'OfferingDescription' => 'offeringDescription',
                       'Duration' => 'duration',
                       'End' => 'end',
                       'Arn' => 'arn',
                       'Count' => 'count',
                       'Tags' => 'tags',
                       'ReservationId' => 'reservationId',
                       'FixedPrice' => 'fixedPrice',
                       'CurrencyCode' => 'currencyCode'
                     },
  'types' => {
               'UsagePrice' => {
                                 'type' => 'Num'
                               },
               'State' => {
                            'type' => 'Str'
                          },
               'Name' => {
                           'type' => 'Str'
                         },
               'ResourceSpecification' => {
                                            'type' => 'MediaLive_ReservationResourceSpecification',
                                            'class' => 'Paws::MediaLive::ReservationResourceSpecification'
                                          },
               'OfferingId' => {
                                 'type' => 'Str'
                               },
               'Region' => {
                             'type' => 'Str'
                           },
               'OfferingType' => {
                                   'type' => 'Str'
                                 },
               'Start' => {
                            'type' => 'Str'
                          },
               'OfferingDescription' => {
                                          'type' => 'Str'
                                        },
               'DurationUnits' => {
                                    'type' => 'Str'
                                  },
               'Arn' => {
                          'type' => 'Str'
                        },
               'End' => {
                          'type' => 'Str'
                        },
               'Duration' => {
                               'type' => 'Int'
                             },
               'ReservationId' => {
                                    'type' => 'Str'
                                  },
               'Tags' => {
                           'class' => 'Paws::MediaLive::Tags',
                           'type' => 'MediaLive_Tags'
                         },
               'Count' => {
                            'type' => 'Int'
                          },
               'CurrencyCode' => {
                                   'type' => 'Str'
                                 },
               'FixedPrice' => {
                                 'type' => 'Num'
                               }
             }
}
;
    return $Params_map;
  }


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


=head2 ResourceSpecification => MediaLive_ReservationResourceSpecification

  Resource configuration details


=head2 Start => Str

  Reservation UTC start date and time in ISO-8601 format, e.g.
'2018-03-01T00:00:00'


=head2 State => Str

  Current state of reservation, e.g. 'ACTIVE'


=head2 Tags => MediaLive_Tags

  A collection of key-value pairs


=head2 UsagePrice => Num

  Recurring usage charge for each reserved resource, e.g. '157.0'



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

