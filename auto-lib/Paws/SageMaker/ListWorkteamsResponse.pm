
package Paws::SageMaker::ListWorkteamsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Workteams => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Workteam]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListWorkteamsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of work teams, use it in the subsequent request.


=head2 B<REQUIRED> Workteams => ArrayRef[L<Paws::SageMaker::Workteam>]

An array of C<Workteam> objects, each describing a work team.


=head2 _request_id => Str


=cut

1;