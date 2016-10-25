
package Paws::ApplicationAutoScaling::DeleteScalingPolicy;
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ScalableDimension => (is => 'ro', isa => 'Str', required => 1);
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteScalingPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationAutoScaling::DeleteScalingPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::DeleteScalingPolicy - Arguments for method DeleteScalingPolicy on Paws::ApplicationAutoScaling

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteScalingPolicy on the 
Application Auto Scaling service. Use the attributes of this class
as arguments to method DeleteScalingPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteScalingPolicy.

As an example:

  $service_obj->DeleteScalingPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyName => Str

The name of the scaling policy to delete.



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

Valid values are: C<"ecs:service:DesiredCount">, C<"ec2:spot-fleet-request:TargetCapacity">

=head2 B<REQUIRED> ServiceNamespace => Str

The namespace for the AWS service that the scaling policy is associated
with. For more information, see AWS Service Namespaces in the Amazon
Web Services General Reference.

Valid values are: C<"ecs">, C<"ec2">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteScalingPolicy in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

