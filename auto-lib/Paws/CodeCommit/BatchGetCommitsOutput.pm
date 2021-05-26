
package Paws::CodeCommit::BatchGetCommitsOutput;
  use Moose;
  has Commits => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::Commit]', traits => ['NameInRequest'], request_name => 'commits' );
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::BatchGetCommitsError]', traits => ['NameInRequest'], request_name => 'errors' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::BatchGetCommitsOutput

=head1 ATTRIBUTES


=head2 Commits => ArrayRef[L<Paws::CodeCommit::Commit>]

An array of commit data type objects, each of which contains
information about a specified commit.


=head2 Errors => ArrayRef[L<Paws::CodeCommit::BatchGetCommitsError>]

Returns any commit IDs for which information could not be found. For
example, if one of the commit IDs was a shortened SHA ID or that commit
was not found in the specified repository, the ID returns an error
object with more information.


=head2 _request_id => Str


=cut

1;