
package Paws::CodeCommit::ListTagsForResourceOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Tags => (is => 'ro', isa => 'Paws::CodeCommit::TagsMap', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that allows the operation to batch the next
results of the operation.


=head2 Tags => L<Paws::CodeCommit::TagsMap>

A list of tag key and value pairs associated with the specified
resource.


=head2 _request_id => Str


=cut

1;