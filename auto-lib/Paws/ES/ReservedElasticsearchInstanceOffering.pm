# Generated from default/object.tt
package Paws::ES::ReservedElasticsearchInstanceOffering;
  use Moo;
  use Types::Standard qw/Str Int Num ArrayRef/;
  use Paws::ES::Types qw/ES_RecurringCharge/;
  has CurrencyCode => (is => 'ro', isa => Str);
  has Duration => (is => 'ro', isa => Int);
  has ElasticsearchInstanceType => (is => 'ro', isa => Str);
  has FixedPrice => (is => 'ro', isa => Num);
  has PaymentOption => (is => 'ro', isa => Str);
  has RecurringCharges => (is => 'ro', isa => ArrayRef[ES_RecurringCharge]);
  has ReservedElasticsearchInstanceOfferingId => (is => 'ro', isa => Str);
  has UsagePrice => (is => 'ro', isa => Num);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ElasticsearchInstanceType' => {
                                                'type' => 'Str'
                                              },
               'ReservedElasticsearchInstanceOfferingId' => {
                                                              'type' => 'Str'
                                                            },
               'UsagePrice' => {
                                 'type' => 'Num'
                               },
               'Duration' => {
                               'type' => 'Int'
                             },
               'PaymentOption' => {
                                    'type' => 'Str'
                                  },
               'RecurringCharges' => {
                                       'type' => 'ArrayRef[ES_RecurringCharge]',
                                       'class' => 'Paws::ES::RecurringCharge'
                                     },
               'FixedPrice' => {
                                 'type' => 'Num'
                               },
               'CurrencyCode' => {
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

Paws::ES::ReservedElasticsearchInstanceOffering

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::ReservedElasticsearchInstanceOffering object:

  $service_obj->Method(Att1 => { CurrencyCode => $value, ..., UsagePrice => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::ReservedElasticsearchInstanceOffering object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrencyCode

=head1 DESCRIPTION

Details of a reserved Elasticsearch instance offering.

=head1 ATTRIBUTES


=head2 CurrencyCode => Str

  The currency code for the reserved Elasticsearch instance offering.


=head2 Duration => Int

  The duration, in seconds, for which the offering will reserve the
Elasticsearch instance.


=head2 ElasticsearchInstanceType => Str

  The Elasticsearch instance type offered by the reserved instance
offering.


=head2 FixedPrice => Num

  The upfront fixed charge you will pay to purchase the specific reserved
Elasticsearch instance offering.


=head2 PaymentOption => Str

  Payment option for the reserved Elasticsearch instance offering


=head2 RecurringCharges => ArrayRef[ES_RecurringCharge]

  The charge to your account regardless of whether you are creating any
domains using the instance offering.


=head2 ReservedElasticsearchInstanceOfferingId => Str

  The Elasticsearch reserved instance offering identifier.


=head2 UsagePrice => Num

  The rate you are charged for each hour the domain that is using the
offering is running.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

