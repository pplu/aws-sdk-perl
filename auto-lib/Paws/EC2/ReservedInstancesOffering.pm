package Paws::EC2::ReservedInstancesOffering;
  use Moo;  use Types::Standard qw/Str Int Num Bool ArrayRef/;
  use Paws::EC2::Types qw/EC2_RecurringCharge EC2_PricingDetail/;
  has AvailabilityZone => (is => 'ro', isa => Str);
  has CurrencyCode => (is => 'ro', isa => Str);
  has Duration => (is => 'ro', isa => Int);
  has FixedPrice => (is => 'ro', isa => Num);
  has InstanceTenancy => (is => 'ro', isa => Str);
  has InstanceType => (is => 'ro', isa => Str);
  has Marketplace => (is => 'ro', isa => Bool);
  has OfferingClass => (is => 'ro', isa => Str);
  has OfferingType => (is => 'ro', isa => Str);
  has PricingDetails => (is => 'ro', isa => ArrayRef[EC2_PricingDetail]);
  has ProductDescription => (is => 'ro', isa => Str);
  has RecurringCharges => (is => 'ro', isa => ArrayRef[EC2_RecurringCharge]);
  has ReservedInstancesOfferingId => (is => 'ro', isa => Str);
  has Scope => (is => 'ro', isa => Str);
  has UsagePrice => (is => 'ro', isa => Num);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'OfferingType' => 'offeringType',
                       'OfferingClass' => 'offeringClass',
                       'Scope' => 'scope',
                       'UsagePrice' => 'usagePrice',
                       'Marketplace' => 'marketplace',
                       'InstanceType' => 'instanceType',
                       'PricingDetails' => 'pricingDetailsSet',
                       'FixedPrice' => 'fixedPrice',
                       'CurrencyCode' => 'currencyCode',
                       'RecurringCharges' => 'recurringCharges',
                       'AvailabilityZone' => 'availabilityZone',
                       'Duration' => 'duration',
                       'ProductDescription' => 'productDescription',
                       'InstanceTenancy' => 'instanceTenancy',
                       'ReservedInstancesOfferingId' => 'reservedInstancesOfferingId'
                     },
  'types' => {
               'Scope' => {
                            'type' => 'Str'
                          },
               'OfferingClass' => {
                                    'type' => 'Str'
                                  },
               'OfferingType' => {
                                   'type' => 'Str'
                                 },
               'UsagePrice' => {
                                 'type' => 'Num'
                               },
               'PricingDetails' => {
                                     'type' => 'ArrayRef[EC2_PricingDetail]',
                                     'class' => 'Paws::EC2::PricingDetail'
                                   },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'Marketplace' => {
                                  'type' => 'Bool'
                                },
               'CurrencyCode' => {
                                   'type' => 'Str'
                                 },
               'FixedPrice' => {
                                 'type' => 'Num'
                               },
               'RecurringCharges' => {
                                       'class' => 'Paws::EC2::RecurringCharge',
                                       'type' => 'ArrayRef[EC2_RecurringCharge]'
                                     },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'InstanceTenancy' => {
                                      'type' => 'Str'
                                    },
               'Duration' => {
                               'type' => 'Int'
                             },
               'ProductDescription' => {
                                         'type' => 'Str'
                                       },
               'ReservedInstancesOfferingId' => {
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

Paws::EC2::ReservedInstancesOffering

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ReservedInstancesOffering object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., UsagePrice => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ReservedInstancesOffering object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Availability Zone in which the Reserved Instance can be used.


=head2 CurrencyCode => Str

  The currency of the Reserved Instance offering you are purchasing. It's
specified using ISO 4217 standard currency codes. At this time, the
only supported currency is C<USD>.


=head2 Duration => Int

  The duration of the Reserved Instance, in seconds.


=head2 FixedPrice => Num

  The purchase price of the Reserved Instance.


=head2 InstanceTenancy => Str

  The tenancy of the instance.


=head2 InstanceType => Str

  The instance type on which the Reserved Instance can be used.


=head2 Marketplace => Bool

  Indicates whether the offering is available through the Reserved
Instance Marketplace (resale) or AWS. If it's a Reserved Instance
Marketplace offering, this is C<true>.


=head2 OfferingClass => Str

  If C<convertible> it can be exchanged for Reserved Instances of the
same or higher monetary value, with different configurations. If
C<standard>, it is not possible to perform an exchange.


=head2 OfferingType => Str

  The Reserved Instance offering type.


=head2 PricingDetails => ArrayRef[EC2_PricingDetail]

  The pricing details of the Reserved Instance offering.


=head2 ProductDescription => Str

  The Reserved Instance product platform description.


=head2 RecurringCharges => ArrayRef[EC2_RecurringCharge]

  The recurring charge tag assigned to the resource.


=head2 ReservedInstancesOfferingId => Str

  The ID of the Reserved Instance offering. This is the offering ID used
in GetReservedInstancesExchangeQuote to confirm that an exchange can be
made.


=head2 Scope => Str

  Whether the Reserved Instance is applied to instances in a Region or an
Availability Zone.


=head2 UsagePrice => Num

  The usage price of the Reserved Instance, per hour.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
