
package Paws::ECS::StopTaskResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has task => (is => 'ro', isa => 'Paws::ECS::Task');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::StopTaskResponse

=head1 ATTRIBUTES

=head2 task => Paws::ECS::Task

  


=cut

