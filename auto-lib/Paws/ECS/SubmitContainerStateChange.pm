
package Paws::ECS::SubmitContainerStateChange;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has ContainerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'containerName' );
  has ExitCode => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'exitCode' );
  has NetworkBindings => (is => 'ro', isa => 'ArrayRef[Paws::ECS::NetworkBinding]', traits => ['NameInRequest'], request_name => 'networkBindings' );
  has Reason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reason' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );
  has Task => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'task' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SubmitContainerStateChange');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::SubmitContainerStateChangeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::SubmitContainerStateChange - Arguments for method SubmitContainerStateChange on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SubmitContainerStateChange on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method SubmitContainerStateChange.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SubmitContainerStateChange.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $SubmitContainerStateChangeResponse = $ecs->SubmitContainerStateChange(
      Cluster         => 'MyString',    # OPTIONAL
      ContainerName   => 'MyString',    # OPTIONAL
      ExitCode        => 1,             # OPTIONAL
      NetworkBindings => [
        {
          BindIP        => 'MyString',
          ContainerPort => 1,
          HostPort      => 1,
          Protocol      => 'tcp',        # values: tcp, udp; OPTIONAL
        },
        ...
      ],                                 # OPTIONAL
      Reason => 'MyString',              # OPTIONAL
      Status => 'MyString',              # OPTIONAL
      Task   => 'MyString',              # OPTIONAL
    );

    # Results:
    my $Acknowledgment = $SubmitContainerStateChangeResponse->Acknowledgment;

    # Returns a L<Paws::ECS::SubmitContainerStateChangeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/SubmitContainerStateChange>

=head1 ATTRIBUTES


=head2 Cluster => Str

The short name or full ARN of the cluster that hosts the container.



=head2 ContainerName => Str

The name of the container.



=head2 ExitCode => Int

The exit code returned for the state change request.



=head2 NetworkBindings => ArrayRef[L<Paws::ECS::NetworkBinding>]

The network bindings of the container.



=head2 Reason => Str

The reason for the state change request.



=head2 Status => Str

The status of the state change request.



=head2 Task => Str

The task ID or full Amazon Resource Name (ARN) of the task that hosts
the container.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SubmitContainerStateChange in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

