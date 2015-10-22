
package Paws::ECS::ListTasksResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );
  has TaskArns => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'taskArns' );


### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListTasksResponse

=head1 ATTRIBUTES

=head2 NextToken => Str

  The C<nextToken> value to include in a future C<ListTasks> request.
When the results of a C<ListTasks> request exceed C<maxResults>, this
value can be used to retrieve the next page of results. This value is
C<null> when there are no more results to return.
=head2 TaskArns => ArrayRef[Str]

  The list of task Amazon Resource Name (ARN) entries for the
C<ListTasks> request.


=cut

1;