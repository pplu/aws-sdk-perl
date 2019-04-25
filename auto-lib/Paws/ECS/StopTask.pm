
package Paws::ECS::StopTask;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has Reason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reason' );
  has Task => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'task' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::StopTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::StopTask - Arguments for method StopTask on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopTask on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method StopTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopTask.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $StopTaskResponse = $ecs->StopTask(
      Task    => 'MyString',
      Cluster => 'MyString',    # OPTIONAL
      Reason  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Task = $StopTaskResponse->Task;

    # Returns a L<Paws::ECS::StopTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/StopTask>

=head1 ATTRIBUTES


=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the task to stop. If you do not specify a cluster, the default
cluster is assumed.



=head2 Reason => Str

An optional message specified when a task is stopped. For example, if
you are using a custom scheduler, you can use this parameter to specify
the reason for stopping the task here, and the message appears in
subsequent DescribeTasks API operations on this task. Up to 255
characters are allowed in this message.



=head2 B<REQUIRED> Task => Str

The task ID or full ARN entry of the task to stop.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopTask in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

