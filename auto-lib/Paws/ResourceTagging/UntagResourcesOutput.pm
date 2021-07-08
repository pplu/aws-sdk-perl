
package Paws::ResourceTagging::UntagResourcesOutput;
  use Moose;
  has FailedResourcesMap => (is => 'ro', isa => 'Paws::ResourceTagging::FailedResourcesMap');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::UntagResourcesOutput

=head1 ATTRIBUTES


=head2 FailedResourcesMap => L<Paws::ResourceTagging::FailedResourcesMap>

A map containing a key-value pair for each failed item that couldn't be
untagged. The key is the ARN of the failed resource. The value is a
C<FailureInfo> object that contains an error code, a status code, and
an error message. If there are no errors, the C<FailedResourcesMap> is
empty.


=head2 _request_id => Str


=cut

1;