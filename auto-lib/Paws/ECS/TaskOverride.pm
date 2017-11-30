package Paws::ECS::TaskOverride;
  use Moose;
  has ContainerOverrides => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ContainerOverride]', request_name => 'containerOverrides', traits => ['NameInRequest']);
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', request_name => 'executionRoleArn', traits => ['NameInRequest']);
  has TaskRoleArn => (is => 'ro', isa => 'Str', request_name => 'taskRoleArn', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::TaskOverride

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::TaskOverride object:

  $service_obj->Method(Att1 => { ContainerOverrides => $value, ..., TaskRoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::TaskOverride object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerOverrides

=head1 DESCRIPTION

The overrides associated with a task.

=head1 ATTRIBUTES


=head2 ContainerOverrides => ArrayRef[L<Paws::ECS::ContainerOverride>]

  One or more container overrides sent to a task.


=head2 ExecutionRoleArn => Str

  The Amazon Resource Name (ARN) of the task execution role that the
Amazon ECS container agent and the Docker daemon can assume.


=head2 TaskRoleArn => Str

  The Amazon Resource Name (ARN) of the IAM role that containers in this
task can assume. All containers in this task are granted the
permissions that are specified in this role.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

