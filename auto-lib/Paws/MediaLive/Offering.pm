# Generated from default/object.tt
package Paws::MediaLive::Offering;
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

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UsagePrice' => {
                                 'type' => 'Num'
                               },
               'ResourceSpecification' => {
                                            'class' => 'Paws::MediaLive::ReservationResourceSpecification',
                                            'type' => 'MediaLive_ReservationResourceSpecification'
                                          },
               'OfferingId' => {
                                 'type' => 'Str'
                               },
               'OfferingType' => {
                                   'type' => 'Str'
                                 },
               'Region' => {
                             'type' => 'Str'
                           },
               'DurationUnits' => {
                                    'type' => 'Str'
                                  },
               'OfferingDescription' => {
                                          'type' => 'Str'
                                        },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Duration' => {
                               'type' => 'Int'
                             },
               'FixedPrice' => {
                                 'type' => 'Num'
                               },
               'CurrencyCode' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'FixedPrice' => 'fixedPrice',
                       'CurrencyCode' => 'currencyCode',
                       'Arn' => 'arn',
                       'Duration' => 'duration',
                       'OfferingType' => 'offeringType',
                       'Region' => 'region',
                       'DurationUnits' => 'durationUnits',
                       'OfferingDescription' => 'offeringDescription',
                       'UsagePrice' => 'usagePrice',
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

Paws::MediaLive::Offering

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::Offering object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UsagePrice => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::Offering object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Reserved resources available for purchase

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


=head2 Region => Str

  AWS region, e.g. 'us-west-2'


=head2 ResourceSpecification => MediaLive_ReservationResourceSpecification

  Resource configuration details


=head2 UsagePrice => Num

  Recurring usage charge for each reserved resource, e.g. '157.0'



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

