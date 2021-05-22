
package Paws::ECS::CreateTaskSetResponse;
  use Moose;
  has TaskSet => (is => 'ro', isa => 'Paws::ECS::TaskSet', traits => ['NameInRequest'], request_name => 'taskSet' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::CreateTaskSetResponse

=head1 ATTRIBUTES


=head2 TaskSet => L<Paws::ECS::TaskSet>

Information about a set of Amazon ECS tasks in either an AWS CodeDeploy
or an C<EXTERNAL> deployment. A task set includes details such as the
desired number of tasks, how many tasks are running, and whether the
task set serves production traffic.


=head2 _request_id => Str


=cut

1;