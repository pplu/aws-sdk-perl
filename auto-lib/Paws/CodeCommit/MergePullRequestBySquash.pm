# Generated from json/callargs_class.tt

package Paws::CodeCommit::MergePullRequestBySquash;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CodeCommit::Types qw/CodeCommit_ConflictResolution/;
  has AuthorName => (is => 'ro', isa => Str, predicate => 1);
  has CommitMessage => (is => 'ro', isa => Str, predicate => 1);
  has ConflictDetailLevel => (is => 'ro', isa => Str, predicate => 1);
  has ConflictResolution => (is => 'ro', isa => CodeCommit_ConflictResolution, predicate => 1);
  has ConflictResolutionStrategy => (is => 'ro', isa => Str, predicate => 1);
  has Email => (is => 'ro', isa => Str, predicate => 1);
  has KeepEmptyFolders => (is => 'ro', isa => Bool, predicate => 1);
  has PullRequestId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RepositoryName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SourceCommitId => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'MergePullRequestBySquash');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeCommit::MergePullRequestBySquashOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConflictDetailLevel' => {
                                          'type' => 'Str'
                                        },
               'CommitMessage' => {
                                    'type' => 'Str'
                                  },
               'PullRequestId' => {
                                    'type' => 'Str'
                                  },
               'ConflictResolution' => {
                                         'class' => 'Paws::CodeCommit::ConflictResolution',
                                         'type' => 'CodeCommit_ConflictResolution'
                                       },
               'ConflictResolutionStrategy' => {
                                                 'type' => 'Str'
                                               },
               'SourceCommitId' => {
                                     'type' => 'Str'
                                   },
               'KeepEmptyFolders' => {
                                       'type' => 'Bool'
                                     },
               'AuthorName' => {
                                 'type' => 'Str'
                               },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'Email' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'ConflictDetailLevel' => 'conflictDetailLevel',
                       'CommitMessage' => 'commitMessage',
                       'PullRequestId' => 'pullRequestId',
                       'ConflictResolution' => 'conflictResolution',
                       'ConflictResolutionStrategy' => 'conflictResolutionStrategy',
                       'SourceCommitId' => 'sourceCommitId',
                       'KeepEmptyFolders' => 'keepEmptyFolders',
                       'AuthorName' => 'authorName',
                       'RepositoryName' => 'repositoryName',
                       'Email' => 'email'
                     },
  'IsRequired' => {
                    'PullRequestId' => 1,
                    'RepositoryName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::MergePullRequestBySquash - Arguments for method MergePullRequestBySquash on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method MergePullRequestBySquash on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method MergePullRequestBySquash.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to MergePullRequestBySquash.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $MergePullRequestBySquashOutput = $codecommit->MergePullRequestBySquash(
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
    my $PullRequest = $MergePullRequestBySquashOutput->PullRequest;

    # Returns a L<Paws::CodeCommit::MergePullRequestBySquashOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/MergePullRequestBySquash>

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

=head2 ConflictResolution => CodeCommit_ConflictResolution

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

This class forms part of L<Paws>, documenting arguments for method MergePullRequestBySquash in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

