package Paws::AutoScaling::AutoScalingInstanceDetails;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
  has HealthStatus => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has LaunchConfigurationName => (is => 'ro', isa => 'Str');
  has LaunchTemplate => (is => 'ro', isa => 'Paws::AutoScaling::LaunchTemplateSpecification');
  has LifecycleState => (is => 'ro', isa => 'Str', required => 1);
  has ProtectedFromScaleIn => (is => 'ro', isa => 'Bool', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::AutoScalingInstanceDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::AutoScalingInstanceDetails object:

  $service_obj->Method(Att1 => { AutoScalingGroupName => $value, ..., ProtectedFromScaleIn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::AutoScalingInstanceDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingGroupName

=head1 DESCRIPTION

Describes an EC2 instance associated with an Auto Scaling group.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

  The name of the Auto Scaling group for the instance.


=head2 B<REQUIRED> AvailabilityZone => Str

  The Availability Zone for the instance.


=head2 B<REQUIRED> HealthStatus => Str

  The last reported health status of this instance. "Healthy" means that
the instance is healthy and should remain in service. "Unhealthy" means
that the instance is unhealthy and Amazon EC2 Auto Scaling should
terminate and replace it.


=head2 B<REQUIRED> InstanceId => Str

  The ID of the instance.


=head2 LaunchConfigurationName => Str

  The launch configuration used to launch the instance. This value is not
available if you attached the instance to the Auto Scaling group.


=head2 LaunchTemplate => L<Paws::AutoScaling::LaunchTemplateSpecification>

  The launch template for the instance.


=head2 B<REQUIRED> LifecycleState => Str

  The lifecycle state for the instance. For more information, see Auto
Scaling Lifecycle
(http://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroupLifecycle.html)
in the I<Amazon EC2 Auto Scaling User Guide>.


=head2 B<REQUIRED> ProtectedFromScaleIn => Bool

  Indicates whether the instance is protected from termination by Amazon
EC2 Auto Scaling when scaling in.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

