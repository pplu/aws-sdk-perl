
package Paws::ECS::SubmitTaskStateChange;
  use Moose;
  has Attachments => (is => 'ro', isa => 'ArrayRef[Paws::ECS::AttachmentStateChange]', traits => ['NameInRequest'], request_name => 'attachments' );
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has Containers => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ContainerStateChange]', traits => ['NameInRequest'], request_name => 'containers' );
  has ExecutionStoppedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionStoppedAt' );
  has PullStartedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pullStartedAt' );
  has PullStoppedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pullStoppedAt' );
  has Reason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reason' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );
  has Task => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'task' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SubmitTaskStateChange');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::SubmitTaskStateChangeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::SubmitTaskStateChange - Arguments for method SubmitTaskStateChange on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SubmitTaskStateChange on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method SubmitTaskStateChange.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SubmitTaskStateChange.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $SubmitTaskStateChangeResponse = $ecs->SubmitTaskStateChange(
      Attachments => [
        {
          AttachmentArn => 'MyString',
          Status        => 'MyString',

        },
        ...
      ],    # OPTIONAL
      Cluster    => 'MyString',    # OPTIONAL
      Containers => [
        {
          ContainerName   => 'MyString',
          ExitCode        => 1,            # OPTIONAL
          NetworkBindings => [
            {
              BindIP        => 'MyString',
              ContainerPort => 1,            # OPTIONAL
              HostPort      => 1,            # OPTIONAL
              Protocol      => 'tcp',        # values: tcp, udp; OPTIONAL
            },
            ...
          ],                                 # OPTIONAL
          Reason => 'MyString',
          Status => 'MyString',
        },
        ...
      ],                                     # OPTIONAL
      ExecutionStoppedAt => '1970-01-01T01:00:00',    # OPTIONAL
      PullStartedAt      => '1970-01-01T01:00:00',    # OPTIONAL
      PullStoppedAt      => '1970-01-01T01:00:00',    # OPTIONAL
      Reason             => 'MyString',               # OPTIONAL
      Status             => 'MyString',               # OPTIONAL
      Task               => 'MyString',               # OPTIONAL
    );

    # Results:
    my $Acknowledgment = $SubmitTaskStateChangeResponse->Acknowledgment;

    # Returns a L<Paws::ECS::SubmitTaskStateChangeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/SubmitTaskStateChange>

=head1 ATTRIBUTES


=head2 Attachments => ArrayRef[L<Paws::ECS::AttachmentStateChange>]

Any attachments associated with the state change request.



=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the task.



=head2 Containers => ArrayRef[L<Paws::ECS::ContainerStateChange>]

Any containers associated with the state change request.



=head2 ExecutionStoppedAt => Str

The Unix timestamp for when the task execution stopped.



=head2 PullStartedAt => Str

The Unix timestamp for when the container image pull began.



=head2 PullStoppedAt => Str

The Unix timestamp for when the container image pull completed.



=head2 Reason => Str

The reason for the state change request.



=head2 Status => Str

The status of the state change request.



=head2 Task => Str

The task ID or full ARN of the task in the state change request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SubmitTaskStateChange in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

