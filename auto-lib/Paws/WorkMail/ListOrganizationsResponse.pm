
package Paws::WorkMail::ListOrganizationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::OrganizationSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListOrganizationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. The value is
"null" when there are no more results to return.


=head2 OrganizationSummaries => ArrayRef[L<Paws::WorkMail::OrganizationSummary>]

The overview of owned organizations presented as a list of organization
summaries.


=head2 _request_id => Str


=cut

1;