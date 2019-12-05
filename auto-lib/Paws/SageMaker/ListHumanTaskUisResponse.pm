
package Paws::SageMaker::ListHumanTaskUisResponse;
  use Moose;
  has HumanTaskUiSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::HumanTaskUiSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListHumanTaskUisResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HumanTaskUiSummaries => ArrayRef[L<Paws::SageMaker::HumanTaskUiSummary>]

An array of objects describing the human task user interfaces.


=head2 NextToken => Str

A token to resume pagination.


=head2 _request_id => Str


=cut

1;