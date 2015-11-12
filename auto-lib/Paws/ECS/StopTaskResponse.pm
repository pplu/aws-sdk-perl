
package Paws::ECS::StopTaskResponse;
  use Moose;
  has Task => (is => 'ro', isa => 'Paws::ECS::Task', traits => ['Unwrapped'], xmlname => 'task' );


### main pod documentation begin ###

=head1 NAME

Paws::ECS::StopTaskResponse

=head1 ATTRIBUTES


=head2 Task => L<Paws::ECS::Task>

  


=cut

1;