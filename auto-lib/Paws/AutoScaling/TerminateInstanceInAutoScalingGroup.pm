
package Paws::AutoScaling::TerminateInstanceInAutoScalingGroup;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ShouldDecrementDesiredCapacity => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateInstanceInAutoScalingGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::ActivityType');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'TerminateInstanceInAutoScalingGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::TerminateInstanceInAutoScalingGroup - Arguments for method TerminateInstanceInAutoScalingGroup on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TerminateInstanceInAutoScalingGroup on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method TerminateInstanceInAutoScalingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TerminateInstanceInAutoScalingGroup.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
   # To terminate an instance in an Auto Scaling group
   # This example terminates the specified instance from the specified Auto
   # Scaling group without updating the size of the group. Auto Scaling launches
   # a replacement instance after the specified instance terminates.
    my $ActivityType = $autoscaling->TerminateInstanceInAutoScalingGroup(
      {
        'InstanceId'                     => 'i-93633f9b',
        'ShouldDecrementDesiredCapacity' => 0
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/TerminateInstanceInAutoScalingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The ID of the instance.



=head2 B<REQUIRED> ShouldDecrementDesiredCapacity => Bool

Indicates whether terminating the instance also decrements the size of
the Auto Scaling group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TerminateInstanceInAutoScalingGroup in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

