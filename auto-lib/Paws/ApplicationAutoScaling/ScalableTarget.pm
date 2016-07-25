package Paws::ApplicationAutoScaling::ScalableTarget;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has MaxCapacity => (is => 'ro', isa => 'Int', required => 1);
  has MinCapacity => (is => 'ro', isa => 'Int', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has RoleARN => (is => 'ro', isa => 'Str', required => 1);
  has ScalableDimension => (is => 'ro', isa => 'Str', required => 1);
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::ScalableTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationAutoScaling::ScalableTarget object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., ServiceNamespace => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationAutoScaling::ScalableTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

An object representing a scalable target.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

  The Unix timestamp for when the scalable target was created.


=head2 B<REQUIRED> MaxCapacity => Int

  The maximum value for this scalable target to scale out to in response
to scaling activities.


=head2 B<REQUIRED> MinCapacity => Int

  The minimum value for this scalable target to scale in to in response
to scaling activities.


=head2 B<REQUIRED> ResourceId => Str

  The unique identifier string for the resource associated with the
scalable target. For Amazon ECS services, this value is the resource
type, followed by the cluster name and service name, such as
C<service/default/sample-webapp>.


=head2 B<REQUIRED> RoleARN => Str

  The ARN of the IAM role that allows Application Auto Scaling to modify
your scalable target on your behalf.


=head2 B<REQUIRED> ScalableDimension => Str

  The scalable dimension associated with the scalable target. The
scalable dimension contains the service namespace, resource type, and
scaling property, such as C<ecs:service:DesiredCount> for the desired
task count of an Amazon ECS service.


=head2 B<REQUIRED> ServiceNamespace => Str

  The namespace for the AWS service that the scalable target is
associated with. For more information, see AWS Service Namespaces in
the Amazon Web Services General Reference.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

