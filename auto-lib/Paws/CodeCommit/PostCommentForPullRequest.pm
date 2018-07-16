
package Paws::CodeCommit::PostCommentForPullRequest;
  use Moose;
  has AfterCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'afterCommitId' , required => 1);
  has BeforeCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'beforeCommitId' , required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken' );
  has Content => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'content' , required => 1);
  has Location => (is => 'ro', isa => 'Paws::CodeCommit::Location', traits => ['NameInRequest'], request_name => 'location' );
  has PullRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pullRequestId' , required => 1);
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PostCommentForPullRequest');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::PostCommentForPullRequestOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PostCommentForPullRequest - Arguments for method PostCommentForPullRequest on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PostCommentForPullRequest on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method PostCommentForPullRequest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PostCommentForPullRequest.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $PostCommentForPullRequestOutput =
      $codecommit->PostCommentForPullRequest(
      AfterCommitId      => 'MyCommitId',
      BeforeCommitId     => 'MyCommitId',
      Content            => 'MyContent',
      PullRequestId      => 'MyPullRequestId',
      RepositoryName     => 'MyRepositoryName',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Location           => {
        FilePath            => 'MyPath',    # OPTIONAL
        FilePosition        => 1,           # OPTIONAL
        RelativeFileVersion => 'BEFORE',    # values: BEFORE, AFTER; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $AfterBlobId    = $PostCommentForPullRequestOutput->AfterBlobId;
    my $AfterCommitId  = $PostCommentForPullRequestOutput->AfterCommitId;
    my $BeforeBlobId   = $PostCommentForPullRequestOutput->BeforeBlobId;
    my $BeforeCommitId = $PostCommentForPullRequestOutput->BeforeCommitId;
    my $Comment        = $PostCommentForPullRequestOutput->Comment;
    my $Location       = $PostCommentForPullRequestOutput->Location;
    my $PullRequestId  = $PostCommentForPullRequestOutput->PullRequestId;
    my $RepositoryName = $PostCommentForPullRequestOutput->RepositoryName;

    # Returns a L<Paws::CodeCommit::PostCommentForPullRequestOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/PostCommentForPullRequest>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AfterCommitId => Str

The full commit ID of the commit in the source branch that is the
current tip of the branch for the pull request when you post the
comment.



=head2 B<REQUIRED> BeforeCommitId => Str

The full commit ID of the commit in the destination branch that was the
tip of the branch at the time the pull request was created.



=head2 ClientRequestToken => Str

A unique, client-generated idempotency token that when provided in a
request, ensures the request cannot be repeated with a changed
parameter. If a request is received with the same parameters and a
token is included, the request will return information about the
initial request that used that token.



=head2 B<REQUIRED> Content => Str

The content of your comment on the change.



=head2 Location => L<Paws::CodeCommit::Location>

The location of the change where you want to post your comment. If no
location is provided, the comment will be posted as a general comment
on the pull request difference between the before commit ID and the
after commit ID.



=head2 B<REQUIRED> PullRequestId => Str

The system-generated ID of the pull request. To get this ID, use
ListPullRequests.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository where you want to post a comment on a pull
request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PostCommentForPullRequest in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

