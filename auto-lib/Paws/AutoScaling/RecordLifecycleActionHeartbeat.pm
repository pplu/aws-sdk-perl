
package Paws::AutoScaling::RecordLifecycleActionHeartbeat;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str');
  has LifecycleActionToken => (is => 'ro', isa => 'Str');
  has LifecycleHookName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RecordLifecycleActionHeartbeat');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::RecordLifecycleActionHeartbeatAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RecordLifecycleActionHeartbeatResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::RecordLifecycleActionHeartbeat - Arguments for method RecordLifecycleActionHeartbeat on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RecordLifecycleActionHeartbeat on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method RecordLifecycleActionHeartbeat.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RecordLifecycleActionHeartbeat.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
   # To record a lifecycle action heartbeat
   # This example records a lifecycle action heartbeat to keep the instance in a
   # pending state.
    my $RecordLifecycleActionHeartbeatAnswer =
      $autoscaling->RecordLifecycleActionHeartbeat(
      {
        'AutoScalingGroupName' => 'my-auto-scaling-group',
        'LifecycleActionToken' => 'bcd2f1b8-9a78-44d3-8a7a-4dd07d7cf635',
        'LifecycleHookName'    => 'my-lifecycle-hook'
      }
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/RecordLifecycleActionHeartbeat>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 InstanceId => Str

The ID of the instance.



=head2 LifecycleActionToken => Str

A token that uniquely identifies a specific lifecycle action associated
with an instance. Amazon EC2 Auto Scaling sends this token to the
notification target that you specified when you created the lifecycle
hook.



=head2 B<REQUIRED> LifecycleHookName => Str

The name of the lifecycle hook.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RecordLifecycleActionHeartbeat in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

