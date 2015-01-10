
package Paws::ECS::StartTask {
  use Moose;
  has cluster => (is => 'ro', isa => 'Str');
  has containerInstances => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has overrides => (is => 'ro', isa => 'Paws::ECS::TaskOverride');
  has taskDefinition => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::StartTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'StartTaskResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::StartTask - Arguments for method StartTask on Paws::ECS

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTask on the 
Amazon EC2 Container Service service. Use the attributes of this class
as arguments to method StartTask.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to StartTask.

As an example:

  $service_obj->StartTask(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 cluster => Str

  

The short name or full Amazon Resource Name (ARN) of the cluster that
you want to start your task on. If you do not specify a cluster, the
default cluster is assumed..










=head2 B<REQUIRED> containerInstances => ArrayRef[Str]

  

The container instance UUIDs or full Amazon Resource Name (ARN) entries
for the container instances on which you would like to place your task.










=head2 overrides => Paws::ECS::TaskOverride

  

=head2 B<REQUIRED> taskDefinition => Str

  

The C<family> and C<revision> (C<family:revision>) or full Amazon
Resource Name (ARN) of the task definition that you want to start.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for StartTask in Paws::ECS

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

