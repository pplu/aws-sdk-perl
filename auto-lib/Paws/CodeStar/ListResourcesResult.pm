
package Paws::CodeStar::ListResourcesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::CodeStar::Resource]', traits => ['NameInRequest'], request_name => 'resources' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::ListResourcesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The continuation token to use when requesting the next set of results,
if there are more results to be returned.


=head2 Resources => ArrayRef[L<Paws::CodeStar::Resource>]

An array of resources associated with the project.


=head2 _request_id => Str


=cut

1;