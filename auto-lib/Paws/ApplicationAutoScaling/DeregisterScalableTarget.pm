
package Paws::ApplicationAutoScaling::DeregisterScalableTarget;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ScalableDimension => (is => 'ro', isa => 'Str', required => 1);
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterScalableTarget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationAutoScaling::DeregisterScalableTargetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::DeregisterScalableTarget - Arguments for method DeregisterScalableTarget on Paws::ApplicationAutoScaling

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterScalableTarget on the 
Application Auto Scaling service. Use the attributes of this class
as arguments to method DeregisterScalableTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterScalableTarget.

As an example:

  $service_obj->DeregisterScalableTarget(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The unique identifier string for the resource associated with the
scalable target. For Amazon ECS services, this value is the resource
type, followed by the cluster name and service name, such as
C<service/default/sample-webapp>.



=head2 B<REQUIRED> ScalableDimension => Str

The scalable dimension associated with the scalable target. The
scalable dimension contains the service namespace, resource type, and
scaling property, such as C<ecs:service:DesiredCount> for the desired
task count of an Amazon ECS service.

Valid values are: C<"ecs:service:DesiredCount">

=head2 B<REQUIRED> ServiceNamespace => Str

The namespace for the AWS service that the scalable target is
associated with. For more information, see AWS Service Namespaces in
the Amazon Web Services General Reference.

Valid values are: C<"ecs">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterScalableTarget in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

