
package Paws::CodeArtifact::ListTagsForResourceResult;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeArtifact::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::ListTagsForResourceResult

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::CodeArtifact::Tag>]

A list of tag key and value pairs associated with the specified
resource.


=head2 _request_id => Str


=cut

