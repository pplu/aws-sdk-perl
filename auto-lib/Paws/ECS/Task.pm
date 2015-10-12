package Paws::ECS::Task;
  use Moose;
  has clusterArn => (is => 'ro', isa => 'Str');
  has containerInstanceArn => (is => 'ro', isa => 'Str');
  has containers => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Container]');
  has desiredStatus => (is => 'ro', isa => 'Str');
  has lastStatus => (is => 'ro', isa => 'Str');
  has overrides => (is => 'ro', isa => 'Paws::ECS::TaskOverride');
  has startedBy => (is => 'ro', isa => 'Str');
  has taskArn => (is => 'ro', isa => 'Str');
  has taskDefinitionArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Task

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Task object:

  $service_obj->Method(Att1 => { clusterArn => $value, ..., taskDefinitionArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Task object:

  $result = $service_obj->Method(...);
  $result->Att1->clusterArn

=head1 ATTRIBUTES

=head2 clusterArn => Str

  

The Amazon Resource Name (ARN) of the of the cluster that hosts the
task.










=head2 containerInstanceArn => Str

  

The Amazon Resource Name (ARN) of the container instances that host the
task.










=head2 containers => ArrayRef[Paws::ECS::Container]

  

The containers associated with the task.










=head2 desiredStatus => Str

  

The desired status of the task.










=head2 lastStatus => Str

  

The last known status of the task.










=head2 overrides => Paws::ECS::TaskOverride

  

One or more container overrides.










=head2 startedBy => Str

  

The tag specified when a task is started. If the task is started by an
Amazon ECS service, then the C<startedBy> parameter contains the
deployment ID of the service that starts it.










=head2 taskArn => Str

  

The Amazon Resource Name (ARN) of the task.










=head2 taskDefinitionArn => Str

  

The Amazon Resource Name (ARN) of the of the task definition that
creates the task.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

