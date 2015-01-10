
package Paws::ECS::DescribeTasksResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has failures => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Failure]');
  has tasks => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Task]');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeTasksResponse

=head1 ATTRIBUTES

=head2 failures => ArrayRef[Paws::ECS::Failure]

  
=head2 tasks => ArrayRef[Paws::ECS::Task]

  

The list of tasks.











=cut

