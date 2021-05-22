
package Paws::IoT::GetBehaviorModelTrainingSummariesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Summaries => (is => 'ro', isa => 'ArrayRef[Paws::IoT::BehaviorModelTrainingSummary]', traits => ['NameInRequest'], request_name => 'summaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetBehaviorModelTrainingSummariesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 Summaries => ArrayRef[L<Paws::IoT::BehaviorModelTrainingSummary>]

A list of all ML Detect behaviors and their model status for a given
Security Profile.


=head2 _request_id => Str


=cut

