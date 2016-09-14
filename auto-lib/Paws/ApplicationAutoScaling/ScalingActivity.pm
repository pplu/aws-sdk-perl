package Paws::ApplicationAutoScaling::ScalingActivity;
  use Moose;
  has ActivityId => (is => 'ro', isa => 'Str', required => 1);
  has Cause => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Details => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ScalableDimension => (is => 'ro', isa => 'Str', required => 1);
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
  has StatusCode => (is => 'ro', isa => 'Str', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::ScalingActivity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationAutoScaling::ScalingActivity object:

  $service_obj->Method(Att1 => { ActivityId => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationAutoScaling::ScalingActivity object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivityId

=head1 DESCRIPTION

An object representing a scaling activity.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivityId => Str

  The unique identifier string for the scaling activity.


=head2 B<REQUIRED> Cause => Str

  A simple description of what caused the scaling activity to happen.


=head2 B<REQUIRED> Description => Str

  A simple description of what action the scaling activity intends to
accomplish.


=head2 Details => Str

  The details about the scaling activity.


=head2 EndTime => Str

  The Unix timestamp for when the scaling activity ended.


=head2 B<REQUIRED> ResourceId => Str

  The resource type and unique identifier string for the resource
associated with the scaling activity. For Amazon ECS services, the
resource type is C<services>, and the identifier is the cluster name
and service name; for example, C<service/default/sample-webapp>. For
Amazon EC2 Spot fleet requests, the resource type is
C<spot-fleet-request>, and the identifier is the Spot fleet request ID;
for example,
C<spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE>.


=head2 B<REQUIRED> ScalableDimension => Str

  The scalable dimension associated with the scaling activity. The
scalable dimension contains the service namespace, resource type, and
scaling property, such as C<ecs:service:DesiredCount> for the desired
task count of an Amazon ECS service, or
C<ec2:spot-fleet-request:TargetCapacity> for the target capacity of an
Amazon EC2 Spot fleet request.


=head2 B<REQUIRED> ServiceNamespace => Str

  The namespace for the AWS service that the scaling activity is
associated with. For more information, see AWS Service Namespaces in
the Amazon Web Services General Reference.


=head2 B<REQUIRED> StartTime => Str

  The Unix timestamp for when the scaling activity began.


=head2 B<REQUIRED> StatusCode => Str

  Indicates the status of the scaling activity.


=head2 StatusMessage => Str

  A simple message about the current status of the scaling activity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

