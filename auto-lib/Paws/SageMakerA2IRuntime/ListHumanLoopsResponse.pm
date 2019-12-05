
package Paws::SageMakerA2IRuntime::ListHumanLoopsResponse;
  use Moose;
  has HumanLoopSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerA2IRuntime::HumanLoopSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerA2IRuntime::ListHumanLoopsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HumanLoopSummaries => ArrayRef[L<Paws::SageMakerA2IRuntime::HumanLoopSummary>]

An array of objects containing information about the human loops.


=head2 NextToken => Str

A token to resume pagination.


=head2 _request_id => Str


=cut

