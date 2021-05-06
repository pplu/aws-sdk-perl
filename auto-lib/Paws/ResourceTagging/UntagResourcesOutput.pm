
package Paws::ResourceTagging::UntagResourcesOutput;
  use Moose;
  has FailedResourcesMap => (is => 'ro', isa => 'Paws::ResourceTagging::FailedResourcesMap');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::UntagResourcesOutput

=head1 ATTRIBUTES


=head2 FailedResourcesMap => L<Paws::ResourceTagging::FailedResourcesMap>

Details of resources that could not be untagged. An error code, status
code, and error message are returned for each failed item.


=head2 _request_id => Str


=cut

1;