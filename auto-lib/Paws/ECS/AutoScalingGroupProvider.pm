package Paws::ECS::AutoScalingGroupProvider;
  use Moose;
  has AutoScalingGroupArn => (is => 'ro', isa => 'Str', request_name => 'autoScalingGroupArn', traits => ['NameInRequest'], required => 1);
  has ManagedScaling => (is => 'ro', isa => 'Paws::ECS::ManagedScaling', request_name => 'managedScaling', traits => ['NameInRequest']);
  has ManagedTerminationProtection => (is => 'ro', isa => 'Str', request_name => 'managedTerminationProtection', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::AutoScalingGroupProvider

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::AutoScalingGroupProvider object:

  $service_obj->Method(Att1 => { AutoScalingGroupArn => $value, ..., ManagedTerminationProtection => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::AutoScalingGroupProvider object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingGroupArn

=head1 DESCRIPTION

The details of the Auto Scaling group for the capacity provider.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupArn => Str

  The Amazon Resource Name (ARN) that identifies the Auto Scaling group.


=head2 ManagedScaling => L<Paws::ECS::ManagedScaling>

  The managed scaling settings for the Auto Scaling group capacity
provider.


=head2 ManagedTerminationProtection => Str

  The managed termination protection setting to use for the Auto Scaling
group capacity provider. This determines whether the Auto Scaling group
has managed termination protection.

When using managed termination protection, managed scaling must also be
used otherwise managed termination protection will not work.

When managed termination protection is enabled, Amazon ECS prevents the
Amazon EC2 instances in an Auto Scaling group that contain tasks from
being terminated during a scale-in action. The Auto Scaling group and
each instance in the Auto Scaling group must have instance protection
from scale-in actions enabled as well. For more information, see
Instance Protection
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection)
in the I<AWS Auto Scaling User Guide>.

When managed termination protection is disabled, your Amazon EC2
instances are not protected from termination when the Auto Scaling
group scales in.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

