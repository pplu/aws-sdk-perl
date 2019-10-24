package Paws::EC2::ReservedInstances;
  use Moo;  use Types::Standard qw/Str Int Num ArrayRef/;
  use Paws::EC2::Types qw/EC2_Tag EC2_RecurringCharge/;
  has AvailabilityZone => (is => 'ro', isa => Str);
  has CurrencyCode => (is => 'ro', isa => Str);
  has Duration => (is => 'ro', isa => Int);
  has End => (is => 'ro', isa => Str);
  has FixedPrice => (is => 'ro', isa => Num);
  has InstanceCount => (is => 'ro', isa => Int);
  has InstanceTenancy => (is => 'ro', isa => Str);
  has InstanceType => (is => 'ro', isa => Str);
  has OfferingClass => (is => 'ro', isa => Str);
  has OfferingType => (is => 'ro', isa => Str);
  has ProductDescription => (is => 'ro', isa => Str);
  has RecurringCharges => (is => 'ro', isa => ArrayRef[EC2_RecurringCharge]);
  has ReservedInstancesId => (is => 'ro', isa => Str);
  has Scope => (is => 'ro', isa => Str);
  has Start => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has UsagePrice => (is => 'ro', isa => Num);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OfferingType' => {
                                   'type' => 'Str'
                                 },
               'Start' => {
                            'type' => 'Str'
                          },
               'State' => {
                            'type' => 'Str'
                          },
               'Scope' => {
                            'type' => 'Str'
                          },
               'End' => {
                          'type' => 'Str'
                        },
               'ProductDescription' => {
                                         'type' => 'Str'
                                       },
               'InstanceTenancy' => {
                                      'type' => 'Str'
                                    },
               'OfferingClass' => {
                                    'type' => 'Str'
                                  },
               'Duration' => {
                               'type' => 'Int'
                             },
               'ReservedInstancesId' => {
                                          'type' => 'Str'
                                        },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'CurrencyCode' => {
                                   'type' => 'Str'
                                 },
               'InstanceCount' => {
                                    'type' => 'Int'
                                  },
               'FixedPrice' => {
                                 'type' => 'Num'
                               },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'RecurringCharges' => {
                                       'class' => 'Paws::EC2::RecurringCharge',
                                       'type' => 'ArrayRef[EC2_RecurringCharge]'
                                     },
               'UsagePrice' => {
                                 'type' => 'Num'
                               }
             },
  'NameInRequest' => {
                       'OfferingType' => 'offeringType',
                       'Start' => 'start',
                       'State' => 'state',
                       'Scope' => 'scope',
                       'End' => 'end',
                       'ProductDescription' => 'productDescription',
                       'InstanceTenancy' => 'instanceTenancy',
                       'OfferingClass' => 'offeringClass',
                       'Duration' => 'duration',
                       'ReservedInstancesId' => 'reservedInstancesId',
                       'InstanceType' => 'instanceType',
                       'AvailabilityZone' => 'availabilityZone',
                       'CurrencyCode' => 'currencyCode',
                       'InstanceCount' => 'instanceCount',
                       'FixedPrice' => 'fixedPrice',
                       'Tags' => 'tagSet',
                       'RecurringCharges' => 'recurringCharges',
                       'UsagePrice' => 'usagePrice'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReservedInstances

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ReservedInstances object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., UsagePrice => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ReservedInstances object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Availability Zone in which the Reserved Instance can be used.


=head2 CurrencyCode => Str

  The currency of the Reserved Instance. It's specified using ISO 4217
standard currency codes. At this time, the only supported currency is
C<USD>.


=head2 Duration => Int

  The duration of the Reserved Instance, in seconds.


=head2 End => Str

  The time when the Reserved Instance expires.


=head2 FixedPrice => Num

  The purchase price of the Reserved Instance.


=head2 InstanceCount => Int

  The number of reservations purchased.


=head2 InstanceTenancy => Str

  The tenancy of the instance.


=head2 InstanceType => Str

  The instance type on which the Reserved Instance can be used.


=head2 OfferingClass => Str

  The offering class of the Reserved Instance.


=head2 OfferingType => Str

  The Reserved Instance offering type.


=head2 ProductDescription => Str

  The Reserved Instance product platform description.


=head2 RecurringCharges => ArrayRef[EC2_RecurringCharge]

  The recurring charge tag assigned to the resource.


=head2 ReservedInstancesId => Str

  The ID of the Reserved Instance.


=head2 Scope => Str

  The scope of the Reserved Instance.


=head2 Start => Str

  The date and time the Reserved Instance started.


=head2 State => Str

  The state of the Reserved Instance purchase.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the resource.


=head2 UsagePrice => Num

  The usage price of the Reserved Instance, per hour.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
