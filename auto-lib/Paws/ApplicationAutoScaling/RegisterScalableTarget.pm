
package Paws::ApplicationAutoScaling::RegisterScalableTarget;
  use Moose;
  has MaxCapacity => (is => 'ro', isa => 'Int');
  has MinCapacity => (is => 'ro', isa => 'Int');
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has RoleARN => (is => 'ro', isa => 'Str');
  has ScalableDimension => (is => 'ro', isa => 'Str', required => 1);
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterScalableTarget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationAutoScaling::RegisterScalableTargetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::RegisterScalableTarget - Arguments for method RegisterScalableTarget on Paws::ApplicationAutoScaling

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterScalableTarget on the 
Application Auto Scaling service. Use the attributes of this class
as arguments to method RegisterScalableTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterScalableTarget.

As an example:

  $service_obj->RegisterScalableTarget(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxCapacity => Int

The maximum value for this scalable target to scale out to in response
to scaling activities. This parameter is required if you are
registering a new scalable target, and it is optional if you are
updating an existing one.



=head2 MinCapacity => Int

The minimum value for this scalable target to scale in to in response
to scaling activities. This parameter is required if you are
registering a new scalable target, and it is optional if you are
updating an existing one.



=head2 B<REQUIRED> ResourceId => Str

The resource type and unique identifier string for the resource to
associate with the scalable target. For Amazon ECS services, the
resource type is C<services>, and the identifier is the cluster name
and service name; for example, C<service/default/sample-webapp>. For
Amazon EC2 Spot fleet requests, the resource type is
C<spot-fleet-request>, and the identifier is the Spot fleet request ID;
for example,
C<spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE>.



=head2 RoleARN => Str

The ARN of the IAM role that allows Application Auto Scaling to modify
your scalable target on your behalf. This parameter is required if you
are registering a new scalable target, and it is optional if you are
updating an existing one.



=head2 B<REQUIRED> ScalableDimension => Str

The scalable dimension associated with the scalable target. The
scalable dimension contains the service namespace, resource type, and
scaling property, such as C<ecs:service:DesiredCount> for the desired
task count of an Amazon ECS service, or
C<ec2:spot-fleet-request:TargetCapacity> for the target capacity of an
Amazon EC2 Spot fleet request.

Valid values are: C<"ecs:service:DesiredCount">, C<"ec2:spot-fleet-request:TargetCapacity">

=head2 B<REQUIRED> ServiceNamespace => Str

The namespace for the AWS service that the scalable target is
associated with. For Amazon ECS services, the namespace value is
C<ecs>. For more information, see AWS Service Namespaces in the Amazon
Web Services General Reference.

Valid values are: C<"ecs">, C<"ec2">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterScalableTarget in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

