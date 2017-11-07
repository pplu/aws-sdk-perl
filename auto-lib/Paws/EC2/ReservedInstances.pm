package Paws::EC2::ReservedInstances;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has CurrencyCode => (is => 'ro', isa => 'Str', request_name => 'currencyCode', traits => ['NameInRequest']);
  has Duration => (is => 'ro', isa => 'Int', request_name => 'duration', traits => ['NameInRequest']);
  has End => (is => 'ro', isa => 'Str', request_name => 'end', traits => ['NameInRequest']);
  has FixedPrice => (is => 'ro', isa => 'Num', request_name => 'fixedPrice', traits => ['NameInRequest']);
  has InstanceCount => (is => 'ro', isa => 'Int', request_name => 'instanceCount', traits => ['NameInRequest']);
  has InstanceTenancy => (is => 'ro', isa => 'Str', request_name => 'instanceTenancy', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has OfferingClass => (is => 'ro', isa => 'Str', request_name => 'offeringClass', traits => ['NameInRequest']);
  has OfferingType => (is => 'ro', isa => 'Str', request_name => 'offeringType', traits => ['NameInRequest']);
  has ProductDescription => (is => 'ro', isa => 'Str', request_name => 'productDescription', traits => ['NameInRequest']);
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RecurringCharge]', request_name => 'recurringCharges', traits => ['NameInRequest']);
  has ReservedInstancesId => (is => 'ro', isa => 'Str', request_name => 'reservedInstancesId', traits => ['NameInRequest']);
  has Scope => (is => 'ro', isa => 'Str', request_name => 'scope', traits => ['NameInRequest']);
  has Start => (is => 'ro', isa => 'Str', request_name => 'start', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has UsagePrice => (is => 'ro', isa => 'Num', request_name => 'usagePrice', traits => ['NameInRequest']);
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


=head2 RecurringCharges => ArrayRef[L<Paws::EC2::RecurringCharge>]

  The recurring charge tag assigned to the resource.


=head2 ReservedInstancesId => Str

  The ID of the Reserved Instance.


=head2 Scope => Str

  The scope of the Reserved Instance.


=head2 Start => Str

  The date and time the Reserved Instance started.


=head2 State => Str

  The state of the Reserved Instance purchase.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  Any tags assigned to the resource.


=head2 UsagePrice => Num

  The usage price of the Reserved Instance, per hour.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
