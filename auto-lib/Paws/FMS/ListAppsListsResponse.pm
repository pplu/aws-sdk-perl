
package Paws::FMS::ListAppsListsResponse;
  use Moose;
  has AppsLists => (is => 'ro', isa => 'ArrayRef[Paws::FMS::AppsListDataSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::ListAppsListsResponse

=head1 ATTRIBUTES


=head2 AppsLists => ArrayRef[L<Paws::FMS::AppsListDataSummary>]

An array of C<AppsListDataSummary> objects.


=head2 NextToken => Str

If you specify a value for C<MaxResults> in your list request, and you
have more objects than the maximum, AWS Firewall Manager returns this
token in the response. You can use this token in subsequent requests to
retrieve the next batch of objects.


=head2 _request_id => Str


=cut

1;