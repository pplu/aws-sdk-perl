package Paws::Batch::AttemptContainerDetail;
  use Moose;
  has ContainerInstanceArn => (is => 'ro', isa => 'Str', request_name => 'containerInstanceArn', traits => ['NameInRequest']);
  has ExitCode => (is => 'ro', isa => 'Int', request_name => 'exitCode', traits => ['NameInRequest']);
  has LogStreamName => (is => 'ro', isa => 'Str', request_name => 'logStreamName', traits => ['NameInRequest']);
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::Batch::NetworkInterface]', request_name => 'networkInterfaces', traits => ['NameInRequest']);
  has Reason => (is => 'ro', isa => 'Str', request_name => 'reason', traits => ['NameInRequest']);
  has TaskArn => (is => 'ro', isa => 'Str', request_name => 'taskArn', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::AttemptContainerDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::AttemptContainerDetail object:

  $service_obj->Method(Att1 => { ContainerInstanceArn => $value, ..., TaskArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::AttemptContainerDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerInstanceArn

=head1 DESCRIPTION

An object representing the details of a container that is part of a job
attempt.

=head1 ATTRIBUTES


=head2 ContainerInstanceArn => Str

  The Amazon Resource Name (ARN) of the Amazon ECS container instance
that hosts the job attempt.


=head2 ExitCode => Int

  The exit code for the job attempt. A non-zero exit code is considered a
failure.


=head2 LogStreamName => Str

  The name of the CloudWatch Logs log stream associated with the
container. The log group for AWS Batch jobs is C</aws/batch/job>. Each
container attempt receives a log stream name when they reach the
C<RUNNING> status.


=head2 NetworkInterfaces => ArrayRef[L<Paws::Batch::NetworkInterface>]

  The network interfaces associated with the job attempt.


=head2 Reason => Str

  A short (255 max characters) human-readable string to provide
additional details about a running or stopped container.


=head2 TaskArn => Str

  The Amazon Resource Name (ARN) of the Amazon ECS task that is
associated with the job attempt. Each container attempt receives a task
ARN when they reach the C<STARTING> status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

