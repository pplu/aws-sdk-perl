
package Paws::Personalize::ListDatasetGroupsResponse;
  use Moose;
  has DatasetGroups => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::DatasetGroupSummary]', traits => ['NameInRequest'], request_name => 'datasetGroups' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListDatasetGroupsResponse

=head1 ATTRIBUTES


=head2 DatasetGroups => ArrayRef[L<Paws::Personalize::DatasetGroupSummary>]

The list of your dataset groups.


=head2 NextToken => Str

A token for getting the next set of dataset groups (if they exist).


=head2 _request_id => Str


=cut

1;