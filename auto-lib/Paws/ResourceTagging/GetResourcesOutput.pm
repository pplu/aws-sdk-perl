
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

A string that indicates that there is more data available than this
response contains. To receive the next part of the response, specify
this response value as the C<PaginationToken> value in the request for
the next page.


=head2 ResourceTagMappingList => ArrayRef[L<Paws::ResourceTagging::ResourceTagMapping>]

A list of resource ARNs and the tags (keys and values) associated with
those ARNs.


=head2 _request_id => Str


=cut

1;