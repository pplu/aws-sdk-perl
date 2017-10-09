package Paws::EC2::SpotInstanceRequest;
  use Moose;
  has ActualBlockHourlyPrice => (is => 'ro', isa => 'Str', request_name => 'actualBlockHourlyPrice', traits => ['NameInRequest']);
  has AvailabilityZoneGroup => (is => 'ro', isa => 'Str', request_name => 'availabilityZoneGroup', traits => ['NameInRequest']);
  has BlockDurationMinutes => (is => 'ro', isa => 'Int', request_name => 'blockDurationMinutes', traits => ['NameInRequest']);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest']);
  has Fault => (is => 'ro', isa => 'Paws::EC2::SpotInstanceStateFault', request_name => 'fault', traits => ['NameInRequest']);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest']);
  has InstanceInterruptionBehavior => (is => 'ro', isa => 'Str', request_name => 'instanceInterruptionBehavior', traits => ['NameInRequest']);
  has LaunchedAvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'launchedAvailabilityZone', traits => ['NameInRequest']);
  has LaunchGroup => (is => 'ro', isa => 'Str', request_name => 'launchGroup', traits => ['NameInRequest']);
  has LaunchSpecification => (is => 'ro', isa => 'Paws::EC2::LaunchSpecification', request_name => 'launchSpecification', traits => ['NameInRequest']);
  has ProductDescription => (is => 'ro', isa => 'Str', request_name => 'productDescription', traits => ['NameInRequest']);
  has SpotInstanceRequestId => (is => 'ro', isa => 'Str', request_name => 'spotInstanceRequestId', traits => ['NameInRequest']);
  has SpotPrice => (is => 'ro', isa => 'Str', request_name => 'spotPrice', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Paws::EC2::SpotInstanceStatus', request_name => 'status', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has ValidFrom => (is => 'ro', isa => 'Str', request_name => 'validFrom', traits => ['NameInRequest']);
  has ValidUntil => (is => 'ro', isa => 'Str', request_name => 'validUntil', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SpotInstanceRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SpotInstanceRequest object:

  $service_obj->Method(Att1 => { ActualBlockHourlyPrice => $value, ..., ValidUntil => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SpotInstanceRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->ActualBlockHourlyPrice

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ActualBlockHourlyPrice => Str

  If you specified a duration and your Spot instance request was
fulfilled, this is the fixed hourly price in effect for the Spot
instance while it runs.


=head2 AvailabilityZoneGroup => Str

  The Availability Zone group. If you specify the same Availability Zone
group for all Spot instance requests, all Spot instances are launched
in the same Availability Zone.


=head2 BlockDurationMinutes => Int

  The duration for the Spot instance, in minutes.


=head2 CreateTime => Str

  The date and time when the Spot instance request was created, in UTC
format (for example, I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z).


=head2 Fault => L<Paws::EC2::SpotInstanceStateFault>

  The fault codes for the Spot instance request, if any.


=head2 InstanceId => Str

  The instance ID, if an instance has been launched to fulfill the Spot
instance request.


=head2 InstanceInterruptionBehavior => Str

  Indicates whether a Spot instance stops or terminates when it is
interrupted.


=head2 LaunchedAvailabilityZone => Str

  The Availability Zone in which the bid is launched.


=head2 LaunchGroup => Str

  The instance launch group. Launch groups are Spot instances that launch
together and terminate together.


=head2 LaunchSpecification => L<Paws::EC2::LaunchSpecification>

  Additional information for launching instances.


=head2 ProductDescription => Str

  The product description associated with the Spot instance.


=head2 SpotInstanceRequestId => Str

  The ID of the Spot instance request.


=head2 SpotPrice => Str

  The maximum hourly price (bid) for the Spot instance launched to
fulfill the request.


=head2 State => Str

  The state of the Spot instance request. Spot bid status information can
help you track your Spot instance requests. For more information, see
Spot Bid Status in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 Status => L<Paws::EC2::SpotInstanceStatus>

  The status code and status message describing the Spot instance
request.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  Any tags assigned to the resource.


=head2 Type => Str

  The Spot instance request type.


=head2 ValidFrom => Str

  The start date of the request, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). The request becomes active at
this date and time.


=head2 ValidUntil => Str

  The end date of the request, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). If this is a one-time request,
it remains active until all instances launch, the request is canceled,
or this date is reached. If the request is persistent, it remains
active until it is canceled or this date is reached.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
