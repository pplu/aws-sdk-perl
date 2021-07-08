
package Paws::ECS::ExecuteCommandResponse;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterArn' );
  has ContainerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'containerArn' );
  has ContainerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'containerName' );
  has Interactive => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'interactive' );
  has Session => (is => 'ro', isa => 'Paws::ECS::Session', traits => ['NameInRequest'], request_name => 'session' );
  has TaskArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ExecuteCommandResponse

=head1 ATTRIBUTES


=head2 ClusterArn => Str

The Amazon Resource Name (ARN) of the cluster.


=head2 ContainerArn => Str

The Amazon Resource Name (ARN) of the container.


=head2 ContainerName => Str

The name of the container.


=head2 Interactive => Bool

Whether or not the execute command session is running in interactive
mode. Amazon ECS only supports initiating interactive sessions, so you
must specify C<true> for this value.


=head2 Session => L<Paws::ECS::Session>

The details of the SSM session that was created for this instance of
execute-command.


=head2 TaskArn => Str

The Amazon Resource Name (ARN) of the task.


=head2 _request_id => Str


=cut

1;