
package Paws::ECS::StopTaskResponse;
  use Moose;
  has Task => (is => 'ro', isa => 'Paws::ECS::Task', traits => ['NameInRequest'], request_name => 'task' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::StopTaskResponse

=head1 ATTRIBUTES


=head2 Task => L<Paws::ECS::Task>

The task that was stopped.


=head2 _request_id => Str


=cut

1;