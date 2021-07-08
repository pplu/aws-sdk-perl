
package Paws::WellArchitected::ListAnswersOutput;
  use Moose;
  has AnswerSummaries => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::AnswerSummary]');
  has LensAlias => (is => 'ro', isa => 'Str');
  has MilestoneNumber => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has WorkloadId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListAnswersOutput

=head1 ATTRIBUTES


=head2 AnswerSummaries => ArrayRef[L<Paws::WellArchitected::AnswerSummary>]




=head2 LensAlias => Str




=head2 MilestoneNumber => Int




=head2 NextToken => Str




=head2 WorkloadId => Str




=head2 _request_id => Str


=cut

