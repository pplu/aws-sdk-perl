
package Paws::AutoScaling::EnterStandby;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ShouldDecrementDesiredCapacity => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnterStandby');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::EnterStandbyAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'EnterStandbyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::EnterStandby - Arguments for method EnterStandby on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnterStandby on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method EnterStandby.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnterStandby.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To move instances into standby mode
    # This example puts the specified instance into standby mode.
    my $EnterStandbyAnswer = $autoscaling->EnterStandby(
      {
        'AutoScalingGroupName'           => 'my-auto-scaling-group',
        'InstanceIds'                    => ['i-93633f9b'],
        'ShouldDecrementDesiredCapacity' => 1
      }
    );

    # Results:
    my $Activities = $EnterStandbyAnswer->Activities;

    # Returns a L<Paws::AutoScaling::EnterStandbyAnswer> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/EnterStandby>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 InstanceIds => ArrayRef[Str|Undef]

The IDs of the instances. You can specify up to 20 instances.



=head2 B<REQUIRED> ShouldDecrementDesiredCapacity => Bool

Indicates whether to decrement the desired capacity of the Auto Scaling
group by the number of instances moved to C<Standby> mode.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnterStandby in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

