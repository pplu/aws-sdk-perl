
package Paws::CodeStar::ListTagsForProjectResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Tags => (is => 'ro', isa => 'Paws::CodeStar::Tags', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::ListTagsForProjectResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Reserved for future use.


=head2 Tags => L<Paws::CodeStar::Tags>

The tags for the project.


=head2 _request_id => Str


=cut

1;