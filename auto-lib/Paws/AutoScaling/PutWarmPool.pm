
package Paws::AutoScaling::PutWarmPool;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has MaxGroupPreparedCapacity => (is => 'ro', isa => 'Int');
  has MinSize => (is => 'ro', isa => 'Int');
  has PoolState => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutWarmPool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::PutWarmPoolAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PutWarmPoolResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::PutWarmPool - Arguments for method PutWarmPool on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutWarmPool on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method PutWarmPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutWarmPool.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To add a warm pool to an Auto Scaling group
    # This example adds a warm pool to the specified Auto Scaling group.
    my $PutWarmPoolAnswer = $autoscaling->PutWarmPool(
      'AutoScalingGroupName' => 'my-auto-scaling-group',
      'MinSize'              => 30,
      'PoolState'            => 'Stopped'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/PutWarmPool>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 MaxGroupPreparedCapacity => Int

Specifies the maximum number of instances that are allowed to be in the
warm pool or in any state except C<Terminated> for the Auto Scaling
group. This is an optional property. Specify it only if you do not want
the warm pool size to be determined by the difference between the
group's maximum capacity and its desired capacity.

If a value for C<MaxGroupPreparedCapacity> is not specified, Amazon EC2
Auto Scaling launches and maintains the difference between the group's
maximum capacity and its desired capacity. If you specify a value for
C<MaxGroupPreparedCapacity>, Amazon EC2 Auto Scaling uses the
difference between the C<MaxGroupPreparedCapacity> and the desired
capacity instead.

The size of the warm pool is dynamic. Only when
C<MaxGroupPreparedCapacity> and C<MinSize> are set to the same value
does the warm pool have an absolute size.

If the desired capacity of the Auto Scaling group is higher than the
C<MaxGroupPreparedCapacity>, the capacity of the warm pool is 0, unless
you specify a value for C<MinSize>. To remove a value that you
previously set, include the property but specify -1 for the value.



=head2 MinSize => Int

Specifies the minimum number of instances to maintain in the warm pool.
This helps you to ensure that there is always a certain number of
warmed instances available to handle traffic spikes. Defaults to 0 if
not specified.



=head2 PoolState => Str

Sets the instance state to transition to after the lifecycle actions
are complete. Default is C<Stopped>.

Valid values are: C<"Stopped">, C<"Running">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutWarmPool in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

