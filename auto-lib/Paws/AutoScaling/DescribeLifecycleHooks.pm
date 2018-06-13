
package Paws::AutoScaling::DescribeLifecycleHooks;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleHookNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLifecycleHooks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::DescribeLifecycleHooksAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLifecycleHooksResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeLifecycleHooks - Arguments for method DescribeLifecycleHooks on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLifecycleHooks on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method DescribeLifecycleHooks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLifecycleHooks.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To describe your lifecycle hooks
    # This example describes the lifecycle hooks for the specified Auto Scaling
    # group.
    my $DescribeLifecycleHooksAnswer = $autoscaling->DescribeLifecycleHooks(
      {
        'AutoScalingGroupName' => 'my-auto-scaling-group'
      }
    );

    # Results:
    my $LifecycleHooks = $DescribeLifecycleHooksAnswer->LifecycleHooks;

    # Returns a L<Paws::AutoScaling::DescribeLifecycleHooksAnswer> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DescribeLifecycleHooks>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 LifecycleHookNames => ArrayRef[Str|Undef]

The names of one or more lifecycle hooks. If you omit this parameter,
all lifecycle hooks are described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLifecycleHooks in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

