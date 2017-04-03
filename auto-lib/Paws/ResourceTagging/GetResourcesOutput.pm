
package Paws::ResourceTagging::GetResourcesOutput;
  use Moose;
  has PaginationToken => (is => 'ro', isa => 'Str');
  has ResourceTagMappingList => (is => 'ro', isa => 'ArrayRef[Paws::ResourceTagging::ResourceTagMapping]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::GetResourcesOutput

=head1 ATTRIBUTES


=head2 PaginationToken => Str

A string that indicates that the response contains more data than can
be returned in a single response. To receive additional data, specify
this string for the C<PaginationToken> value in a subsequent request.


=head2 ResourceTagMappingList => ArrayRef[L<Paws::ResourceTagging::ResourceTagMapping>]

A list of resource ARNs and the tags (keys and values) associated with
each.


=head2 _request_id => Str


=cut

1;