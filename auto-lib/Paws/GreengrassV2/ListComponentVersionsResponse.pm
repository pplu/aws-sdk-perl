
package Paws::GreengrassV2::ListComponentVersionsResponse;
  use Moose;
  has ComponentVersions => (is => 'ro', isa => 'ArrayRef[Paws::GreengrassV2::ComponentVersionListItem]', traits => ['NameInRequest'], request_name => 'componentVersions');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::ListComponentVersionsResponse

=head1 ATTRIBUTES


=head2 ComponentVersions => ArrayRef[L<Paws::GreengrassV2::ComponentVersionListItem>]

A list of versions that exist for the component.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

