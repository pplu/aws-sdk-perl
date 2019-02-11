
package Paws::AutoScaling::SetInstanceHealth;
  use Moose;
  has HealthStatus => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ShouldRespectGracePeriod => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetInstanceHealth');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::SetInstanceHealth - Arguments for method SetInstanceHealth on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetInstanceHealth on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method SetInstanceHealth.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetInstanceHealth.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
   # To set the health status of an instance
   # This example sets the health status of the specified instance to Unhealthy.
    $autoscaling->SetInstanceHealth(
      {
        'HealthStatus' => 'Unhealthy',
        'InstanceId'   => 'i-93633f9b'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/SetInstanceHealth>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthStatus => Str

The health status of the instance. Set to C<Healthy> to have the
instance remain in service. Set to C<Unhealthy> to have the instance be
out of service. Amazon EC2 Auto Scaling terminates and replaces the
unhealthy instance.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance.



=head2 ShouldRespectGracePeriod => Bool

If the Auto Scaling group of the specified instance has a
C<HealthCheckGracePeriod> specified for the group, by default, this
call respects the grace period. Set this to C<False>, to have the call
not respect the grace period associated with the group.

For more information about the health check grace period, see
CreateAutoScalingGroup.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetInstanceHealth in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

