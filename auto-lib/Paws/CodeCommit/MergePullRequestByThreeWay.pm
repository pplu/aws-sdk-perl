
package Paws::CodeCommit::MergePullRequestByThreeWay;
  use Moose;
  has AuthorName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorName' );
  has CommitMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitMessage' );
  has ConflictDetailLevel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'conflictDetailLevel' );
  has ConflictResolution => (is => 'ro', isa => 'Paws::CodeCommit::ConflictResolution', traits => ['NameInRequest'], request_name => 'conflictResolution' );
  has ConflictResolutionStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'conflictResolutionStrategy' );
  has Email => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'email' );
  has KeepEmptyFolders => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'keepEmptyFolders' );
  has PullRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pullRequestId' , required => 1);
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);
  has SourceCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceCommitId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'MergePullRequestByThreeWay');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::MergePullRequestByThreeWayOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::MergePullRequestByThreeWay - Arguments for method MergePullRequestByThreeWay on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method MergePullRequestByThreeWay on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method MergePullRequestByThreeWay.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to MergePullRequestByThreeWay.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $MergePullRequestByThreeWayOutput =
      $codecommit->MergePullRequestByThreeWay(
      PullRequestId       => 'MyPullRequestId',
      RepositoryName      => 'MyRepositoryName',
      AuthorName          => 'MyName',             # OPTIONAL
      CommitMessage       => 'MyMessage',          # OPTIONAL
      ConflictDetailLevel => 'FILE_LEVEL',         # OPTIONAL
      ConflictResolution  => {
        DeleteFiles => [
          {
            FilePath => 'MyPath',

          },
          ...
        ],                                         # OPTIONAL
        ReplaceContents => [
          {
            FilePath        => 'MyPath',
            ReplacementType => 'KEEP_BASE'
            , # values: KEEP_BASE, KEEP_SOURCE, KEEP_DESTINATION, USE_NEW_CONTENT
            Content  => 'BlobFileContent', # max: 6291456; OPTIONAL
            FileMode => 'EXECUTABLE',      # values: EXECUTABLE, NORMAL, SYMLINK
          },
          ...
        ],                                 # OPTIONAL
        SetFileModes => [
          {
            FileMode => 'EXECUTABLE',      # values: EXECUTABLE, NORMAL, SYMLINK
            FilePath => 'MyPath',

          },
          ...
        ],                                 # OPTIONAL
      },    # OPTIONAL
      ConflictResolutionStrategy => 'NONE',          # OPTIONAL
      Email                      => 'MyEmail',       # OPTIONAL
      KeepEmptyFolders           => 1,               # OPTIONAL
      SourceCommitId             => 'MyObjectId',    # OPTIONAL
      );

    # Results:
    my $PullRequest = $MergePullRequestByThreeWayOutput->PullRequest;

    # Returns a L<Paws::CodeCommit::MergePullRequestByThreeWayOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/MergePullRequestByThreeWay>

=head1 ATTRIBUTES


=head2 AuthorName => Str

The name of the author who created the commit. This information will be
used as both the author and committer for the commit.



=head2 CommitMessage => Str

The commit message to include in the commit information for the merge.



=head2 ConflictDetailLevel => Str

The level of conflict detail to use. If unspecified, the default
FILE_LEVEL is used, which will return a not mergeable result if the
same file has differences in both branches. If LINE_LEVEL is specified,
a conflict will be considered not mergeable if the same file in both
branches has differences on the same line.

Valid values are: C<"FILE_LEVEL">, C<"LINE_LEVEL">

=head2 ConflictResolution => L<Paws::CodeCommit::ConflictResolution>

A list of inputs to use when resolving conflicts during a merge if
AUTOMERGE is chosen as the conflict resolution strategy.



=head2 ConflictResolutionStrategy => Str

Specifies which branch to use when resolving conflicts, or whether to
attempt automatically merging two versions of a file. The default is
NONE, which requires any conflicts to be resolved manually before the
merge operation will be successful.

Valid values are: C<"NONE">, C<"ACCEPT_SOURCE">, C<"ACCEPT_DESTINATION">, C<"AUTOMERGE">

=head2 Email => Str

The email address of the person merging the branches. This information
will be used in the commit information for the merge.



=head2 KeepEmptyFolders => Bool

If the commit contains deletions, whether to keep a folder or folder
structure if the changes leave the folders empty. If this is specified
as true, a .gitkeep file will be created for empty folders. The default
is false.



=head2 B<REQUIRED> PullRequestId => Str

The system-generated ID of the pull request. To get this ID, use
ListPullRequests.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository where the pull request was created.



=head2 SourceCommitId => Str

The full commit ID of the original or updated commit in the pull
request source branch. Pass this value if you want an exception thrown
if the current commit ID of the tip of the source branch does not match
this commit ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method MergePullRequestByThreeWay in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

