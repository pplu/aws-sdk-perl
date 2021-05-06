
package Paws::Config::PutEvaluationsResponse;
  use Moose;
  has FailedEvaluations => (is => 'ro', isa => 'ArrayRef[Paws::Config::Evaluation]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutEvaluationsResponse

=head1 ATTRIBUTES


=head2 FailedEvaluations => ArrayRef[L<Paws::Config::Evaluation>]

Requests that failed because of a client or server error.


=head2 _request_id => Str


=cut

1;