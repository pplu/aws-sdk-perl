
package Paws::CodeStarConnections::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeStarConnections::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::CodeStarConnections::Tag>]

A list of tag key and value pairs associated with the specified
resource.


=head2 _request_id => Str


=cut

1;