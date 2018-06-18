
package Paws::CodeCommit::GetCommentsForPullRequest;
  use Moose;
  has AfterCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'afterCommitId' );
  has BeforeCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'beforeCommitId' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has PullRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pullRequestId' , required => 1);
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCommentsForPullRequest');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::GetCommentsForPullRequestOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetCommentsForPullRequest - Arguments for method GetCommentsForPullRequest on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCommentsForPullRequest on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method GetCommentsForPullRequest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCommentsForPullRequest.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $GetCommentsForPullRequestOutput =
      $codecommit->GetCommentsForPullRequest(
      PullRequestId  => 'MyPullRequestId',
      AfterCommitId  => 'MyCommitId',          # OPTIONAL
      BeforeCommitId => 'MyCommitId',          # OPTIONAL
      MaxResults     => 1,                     # OPTIONAL
      NextToken      => 'MyNextToken',         # OPTIONAL
      RepositoryName => 'MyRepositoryName',    # OPTIONAL
      );

    # Results:
    my $CommentsForPullRequestData =
      $GetCommentsForPullRequestOutput->CommentsForPullRequestData;
    my $NextToken = $GetCommentsForPullRequestOutput->NextToken;

    # Returns a L<Paws::CodeCommit::GetCommentsForPullRequestOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/GetCommentsForPullRequest>

=head1 ATTRIBUTES


=head2 AfterCommitId => Str

The full commit ID of the commit in the source branch that was the tip
of the branch at the time the comment was made.



=head2 BeforeCommitId => Str

The full commit ID of the commit in the destination branch that was the
tip of the branch at the time the pull request was created.



=head2 MaxResults => Int

A non-negative integer used to limit the number of returned results.
The default is 100 comments. You can return up to 500 comments with a
single request.



=head2 NextToken => Str

An enumeration token that when provided in a request, returns the next
batch of the results.



=head2 B<REQUIRED> PullRequestId => Str

The system-generated ID of the pull request. To get this ID, use
ListPullRequests.



=head2 RepositoryName => Str

The name of the repository that contains the pull request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCommentsForPullRequest in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

