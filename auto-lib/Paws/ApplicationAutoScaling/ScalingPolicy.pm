package Paws::ApplicationAutoScaling::ScalingPolicy;
  use Moose;
  has Alarms => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationAutoScaling::Alarm]');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has PolicyARN => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyType => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ScalableDimension => (is => 'ro', isa => 'Str', required => 1);
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);
  has StepScalingPolicyConfiguration => (is => 'ro', isa => 'Paws::ApplicationAutoScaling::StepScalingPolicyConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::ScalingPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationAutoScaling::ScalingPolicy object:

  $service_obj->Method(Att1 => { Alarms => $value, ..., StepScalingPolicyConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationAutoScaling::ScalingPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->Alarms

=head1 DESCRIPTION

An object representing a scaling policy.

=head1 ATTRIBUTES


=head2 Alarms => ArrayRef[L<Paws::ApplicationAutoScaling::Alarm>]

  The CloudWatch alarms that are associated with the scaling policy.


=head2 B<REQUIRED> CreationTime => Str

  The Unix timestamp for when the scaling policy was created.


=head2 B<REQUIRED> PolicyARN => Str

  The Amazon Resource Name (ARN) of the scaling policy.


=head2 B<REQUIRED> PolicyName => Str

  The name of the scaling policy.


=head2 B<REQUIRED> PolicyType => Str

  The scaling policy type.


=head2 B<REQUIRED> ResourceId => Str

  The resource type and unique identifier string for the resource
associated with the scaling policy. For Amazon ECS services, the
resource type is C<services>, and the identifier is the cluster name
and service name; for example, C<service/default/sample-webapp>. For
Amazon EC2 Spot fleet requests, the resource type is
C<spot-fleet-request>, and the identifier is the Spot fleet request ID;
for example,
C<spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE>.


=head2 B<REQUIRED> ScalableDimension => Str

  The scalable dimension associated with the scaling policy. The scalable
dimension contains the service namespace, resource type, and scaling
property, such as C<ecs:service:DesiredCount> for the desired task
count of an Amazon ECS service, or
C<ec2:spot-fleet-request:TargetCapacity> for the target capacity of an
Amazon EC2 Spot fleet request.


=head2 B<REQUIRED> ServiceNamespace => Str

  The namespace for the AWS service that the scaling policy is associated
with. For more information, see AWS Service Namespaces in the Amazon
Web Services General Reference.


=head2 StepScalingPolicyConfiguration => L<Paws::ApplicationAutoScaling::StepScalingPolicyConfiguration>

  The configuration for the step scaling policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

