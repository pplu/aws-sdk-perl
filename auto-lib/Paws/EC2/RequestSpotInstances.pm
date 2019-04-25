
package Paws::EC2::RequestSpotInstances;
  use Moose;
  has AvailabilityZoneGroup => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZoneGroup' );
  has BlockDurationMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'blockDurationMinutes' );
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'instanceCount' );
  has InstanceInterruptionBehavior => (is => 'ro', isa => 'Str');
  has LaunchGroup => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchGroup' );
  has LaunchSpecification => (is => 'ro', isa => 'Paws::EC2::RequestSpotLaunchSpecification');
  has SpotPrice => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spotPrice' );
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' );
  has ValidFrom => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'validFrom' );
  has ValidUntil => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'validUntil' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RequestSpotInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::RequestSpotInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RequestSpotInstances - Arguments for method RequestSpotInstances on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RequestSpotInstances on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method RequestSpotInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RequestSpotInstances.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
   # To create a one-time Spot Instance request
   # This example creates a one-time Spot Instance request for five instances in
   # the specified Availability Zone. If your account supports EC2-VPC only,
   # Amazon EC2 launches the instances in the default subnet of the specified
   # Availability Zone. If your account supports EC2-Classic, Amazon EC2
   # launches the instances in EC2-Classic in the specified Availability Zone.
    my $RequestSpotInstancesResult = $ec2->RequestSpotInstances(
      {
        'InstanceCount'       => 5,
        'LaunchSpecification' => {
          'IamInstanceProfile' => {
            'Arn' => 'arn:aws:iam::123456789012:instance-profile/my-iam-role'
          },
          'ImageId'      => 'ami-1a2b3c4d',
          'InstanceType' => 'm3.medium',
          'KeyName'      => 'my-key-pair',
          'Placement'    => {
            'AvailabilityZone' => 'us-west-2a'
          },
          'SecurityGroupIds' => ['sg-1a2b3c4d']
        },
        'SpotPrice' => 0.03,
        'Type'      => 'one-time'
      }
    );

   # To create a one-time Spot Instance request
   # This example command creates a one-time Spot Instance request for five
   # instances in the specified subnet. Amazon EC2 launches the instances in the
   # specified subnet. If the VPC is a nondefault VPC, the instances do not
   # receive a public IP address by default.
    my $RequestSpotInstancesResult = $ec2->RequestSpotInstances(
      {
        'InstanceCount'       => 5,
        'LaunchSpecification' => {
          'IamInstanceProfile' => {
            'Arn' => 'arn:aws:iam::123456789012:instance-profile/my-iam-role'
          },
          'ImageId'          => 'ami-1a2b3c4d',
          'InstanceType'     => 'm3.medium',
          'SecurityGroupIds' => ['sg-1a2b3c4d'],
          'SubnetId'         => 'subnet-1a2b3c4d'
        },
        'SpotPrice' => 0.050,
        'Type'      => 'one-time'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/RequestSpotInstances>

=head1 ATTRIBUTES


=head2 AvailabilityZoneGroup => Str

The user-specified name for a logical grouping of requests.

When you specify an Availability Zone group in a Spot Instance request,
all Spot Instances in the request are launched in the same Availability
Zone. Instance proximity is maintained with this parameter, but the
choice of Availability Zone is not. The group applies only to requests
for Spot Instances of the same instance type. Any additional Spot
Instance requests that are specified with the same Availability Zone
group name are launched in that same Availability Zone, as long as at
least one instance from the group is still active.

If there is no active instance running in the Availability Zone group
that you specify for a new Spot Instance request (all instances are
terminated, the request is expired, or the maximum price you specified
falls below current Spot price), then Amazon EC2 launches the instance
in any Availability Zone where the constraint can be met. Consequently,
the subsequent set of Spot Instances could be placed in a different
zone from the original request, even if you specified the same
Availability Zone group.

Default: Instances are launched in any available Availability Zone.



=head2 BlockDurationMinutes => Int

The required duration for the Spot Instances (also known as Spot
blocks), in minutes. This value must be a multiple of 60 (60, 120, 180,
240, 300, or 360).

The duration period starts as soon as your Spot Instance receives its
instance ID. At the end of the duration period, Amazon EC2 marks the
Spot Instance for termination and provides a Spot Instance termination
notice, which gives the instance a two-minute warning before it
terminates.

You can't specify an Availability Zone group or a launch group if you
specify a duration.



=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html)
in the I<Amazon EC2 User Guide for Linux Instances>.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 InstanceCount => Int

The maximum number of Spot Instances to launch.

Default: 1



=head2 InstanceInterruptionBehavior => Str

The behavior when a Spot Instance is interrupted. The default is
C<terminate>.

Valid values are: C<"hibernate">, C<"stop">, C<"terminate">

=head2 LaunchGroup => Str

The instance launch group. Launch groups are Spot Instances that launch
together and terminate together.

Default: Instances are launched and terminated individually



=head2 LaunchSpecification => L<Paws::EC2::RequestSpotLaunchSpecification>

The launch specification.



=head2 SpotPrice => Str

The maximum price per hour that you are willing to pay for a Spot
Instance. The default is the On-Demand price.



=head2 Type => Str

The Spot Instance request type.

Default: C<one-time>

Valid values are: C<"one-time">, C<"persistent">

=head2 ValidFrom => Str

The start date of the request. If this is a one-time request, the
request becomes active at this date and time and remains active until
all instances launch, the request expires, or the request is canceled.
If the request is persistent, the request becomes active at this date
and time and remains active until it expires or is canceled.



=head2 ValidUntil => Str

The end date of the request. If this is a one-time request, the request
remains active until all instances launch, the request is canceled, or
this date is reached. If the request is persistent, it remains active
until it is canceled or this date is reached. The default end date is 7
days from the current date.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RequestSpotInstances in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

