
package Paws::CodeStar::ListProjectsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Projects => (is => 'ro', isa => 'ArrayRef[Paws::CodeStar::ProjectSummary]', traits => ['NameInRequest'], request_name => 'projects' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::ListProjectsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The continuation token to use when requesting the next set of results,
if there are more results to be returned.


=head2 B<REQUIRED> Projects => ArrayRef[L<Paws::CodeStar::ProjectSummary>]

A list of projects.


=head2 _request_id => Str


=cut

1;