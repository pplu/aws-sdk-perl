
package Paws::Datasync::ListTagsForResourceResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An opaque string that indicates the position at which to begin
returning the next list of resource tags.


=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

Array of resource tags.


=head2 _request_id => Str


=cut

1;