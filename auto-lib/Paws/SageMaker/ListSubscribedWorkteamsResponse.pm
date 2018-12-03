
package Paws::SageMaker::ListSubscribedWorkteamsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SubscribedWorkteams => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::SubscribedWorkteam]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListSubscribedWorkteamsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of work teams, use it in the subsequent request.


=head2 B<REQUIRED> SubscribedWorkteams => ArrayRef[L<Paws::SageMaker::SubscribedWorkteam>]

An array of C<Workteam> objects, each describing a work team.


=head2 _request_id => Str


=cut

1;