
package Paws::SageMaker::ListFeatureGroupsResponse;
  use Moose;
  has FeatureGroupSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::FeatureGroupSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListFeatureGroupsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FeatureGroupSummaries => ArrayRef[L<Paws::SageMaker::FeatureGroupSummary>]

A summary of feature groups.


=head2 B<REQUIRED> NextToken => Str

A token to resume pagination of C<ListFeatureGroups> results.


=head2 _request_id => Str


=cut

1;