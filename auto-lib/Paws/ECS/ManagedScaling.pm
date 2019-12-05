package Paws::ECS::ManagedScaling;
  use Moose;
  has MaximumScalingStepSize => (is => 'ro', isa => 'Int', request_name => 'maximumScalingStepSize', traits => ['NameInRequest']);
  has MinimumScalingStepSize => (is => 'ro', isa => 'Int', request_name => 'minimumScalingStepSize', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has TargetCapacity => (is => 'ro', isa => 'Int', request_name => 'targetCapacity', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ManagedScaling

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::ManagedScaling object:

  $service_obj->Method(Att1 => { MaximumScalingStepSize => $value, ..., TargetCapacity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::ManagedScaling object:

  $result = $service_obj->Method(...);
  $result->Att1->MaximumScalingStepSize

=head1 DESCRIPTION

The managed scaling settings for the Auto Scaling group capacity
provider.

When managed scaling is enabled, Amazon ECS manages the scale-in and
scale-out actions of the Auto Scaling group. Amazon ECS manages a
target tracking scaling policy using an Amazon ECS-managed CloudWatch
metric with the specified C<targetCapacity> value as the target value
for the metric. For more information, see Using Managed Scaling
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/asg-capacity-providers.html#asg-capacity-providers-managed-scaling)
in the I<Amazon Elastic Container Service Developer Guide>.

If managed scaling is disabled, the user must manage the scaling of the
Auto Scaling group.

=head1 ATTRIBUTES


=head2 MaximumScalingStepSize => Int

  The maximum number of container instances that Amazon ECS will scale in
or scale out at one time. If this parameter is omitted, the default
value of C<10000> is used.


=head2 MinimumScalingStepSize => Int

  The minimum number of container instances that Amazon ECS will scale in
or scale out at one time. If this parameter is omitted, the default
value of C<1> is used.


=head2 Status => Str

  Whether or not to enable managed scaling for the capacity provider.


=head2 TargetCapacity => Int

  The target capacity value for the capacity provider. The specified
value must be greater than C<0> and less than or equal to C<100>. A
value of C<100> will result in the Amazon EC2 instances in your Auto
Scaling group being completely utilized.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

