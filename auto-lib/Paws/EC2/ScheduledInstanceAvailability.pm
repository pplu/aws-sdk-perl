package Paws::EC2::ScheduledInstanceAvailability;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has AvailableInstanceCount => (is => 'ro', isa => 'Int', request_name => 'availableInstanceCount', traits => ['NameInRequest']);
  has FirstSlotStartTime => (is => 'ro', isa => 'Str', request_name => 'firstSlotStartTime', traits => ['NameInRequest']);
  has HourlyPrice => (is => 'ro', isa => 'Str', request_name => 'hourlyPrice', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has MaxTermDurationInDays => (is => 'ro', isa => 'Int', request_name => 'maxTermDurationInDays', traits => ['NameInRequest']);
  has MinTermDurationInDays => (is => 'ro', isa => 'Int', request_name => 'minTermDurationInDays', traits => ['NameInRequest']);
  has NetworkPlatform => (is => 'ro', isa => 'Str', request_name => 'networkPlatform', traits => ['NameInRequest']);
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest']);
  has PurchaseToken => (is => 'ro', isa => 'Str', request_name => 'purchaseToken', traits => ['NameInRequest']);
  has Recurrence => (is => 'ro', isa => 'Paws::EC2::ScheduledInstanceRecurrence', request_name => 'recurrence', traits => ['NameInRequest']);
  has SlotDurationInHours => (is => 'ro', isa => 'Int', request_name => 'slotDurationInHours', traits => ['NameInRequest']);
  has TotalScheduledInstanceHours => (is => 'ro', isa => 'Int', request_name => 'totalScheduledInstanceHours', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ScheduledInstanceAvailability

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ScheduledInstanceAvailability object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., TotalScheduledInstanceHours => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ScheduledInstanceAvailability object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Availability Zone.


=head2 AvailableInstanceCount => Int

  The number of available instances.


=head2 FirstSlotStartTime => Str

  The time period for the first schedule to start.


=head2 HourlyPrice => Str

  The hourly price for a single instance.


=head2 InstanceType => Str

  The instance type. You can specify one of the C3, C4, M4, or R3
instance types.


=head2 MaxTermDurationInDays => Int

  The maximum term. The only possible value is 365 days.


=head2 MinTermDurationInDays => Int

  The minimum term. The only possible value is 365 days.


=head2 NetworkPlatform => Str

  The network platform (C<EC2-Classic> or C<EC2-VPC>).


=head2 Platform => Str

  The platform (C<Linux/UNIX> or C<Windows>).


=head2 PurchaseToken => Str

  The purchase token. This token expires in two hours.


=head2 Recurrence => L<Paws::EC2::ScheduledInstanceRecurrence>

  The schedule recurrence.


=head2 SlotDurationInHours => Int

  The number of hours in the schedule.


=head2 TotalScheduledInstanceHours => Int

  The total number of hours for a single instance for the entire term.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
