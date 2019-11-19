# Generated from json/callargs_class.tt

package Paws::CodeCommit::MergeBranchesByThreeWay;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CodeCommit::Types qw/CodeCommit_ConflictResolution/;
  has AuthorName => (is => 'ro', isa => Str, predicate => 1);
  has CommitMessage => (is => 'ro', isa => Str, predicate => 1);
  has ConflictDetailLevel => (is => 'ro', isa => Str, predicate => 1);
  has ConflictResolution => (is => 'ro', isa => CodeCommit_ConflictResolution, predicate => 1);
  has ConflictResolutionStrategy => (is => 'ro', isa => Str, predicate => 1);
  has DestinationCommitSpecifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Email => (is => 'ro', isa => Str, predicate => 1);
  has KeepEmptyFolders => (is => 'ro', isa => Bool, predicate => 1);
  has RepositoryName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SourceCommitSpecifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TargetBranch => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'MergeBranchesByThreeWay');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeCommit::MergeBranchesByThreeWayOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DestinationCommitSpecifier' => 1,
                    'SourceCommitSpecifier' => 1,
                    'RepositoryName' => 1
                  },
  'NameInRequest' => {
                       'DestinationCommitSpecifier' => 'destinationCommitSpecifier',
                       'SourceCommitSpecifier' => 'sourceCommitSpecifier',
                       'CommitMessage' => 'commitMessage',
                       'AuthorName' => 'authorName',
                       'KeepEmptyFolders' => 'keepEmptyFolders',
                       'ConflictResolution' => 'conflictResolution',
                       'TargetBranch' => 'targetBranch',
                       'RepositoryName' => 'repositoryName',
                       'Email' => 'email',
                       'ConflictResolutionStrategy' => 'conflictResolutionStrategy',
                       'ConflictDetailLevel' => 'conflictDetailLevel'
                     },
  'types' => {
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'Email' => {
                            'type' => 'Str'
                          },
               'ConflictResolutionStrategy' => {
                                                 'type' => 'Str'
                                               },
               'ConflictDetailLevel' => {
                                          'type' => 'Str'
                                        },
               'ConflictResolution' => {
                                         'class' => 'Paws::CodeCommit::ConflictResolution',
                                         'type' => 'CodeCommit_ConflictResolution'
                                       },
               'TargetBranch' => {
                                   'type' => 'Str'
                                 },
               'AuthorName' => {
                                 'type' => 'Str'
                               },
               'KeepEmptyFolders' => {
                                       'type' => 'Bool'
                                     },
               'SourceCommitSpecifier' => {
                                            'type' => 'Str'
                                          },
               'DestinationCommitSpecifier' => {
                                                 'type' => 'Str'
                                               },
               'CommitMessage' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::MergeBranchesByThreeWay - Arguments for method MergeBranchesByThreeWay on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method MergeBranchesByThreeWay on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method MergeBranchesByThreeWay.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to MergeBranchesByThreeWay.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $MergeBranchesByThreeWayOutput = $codecommit->MergeBranchesByThreeWay(
      DestinationCommitSpecifier => 'MyCommitName',
      RepositoryName             => 'MyRepositoryName',
      SourceCommitSpecifier      => 'MyCommitName',
      AuthorName                 => 'MyName',             # OPTIONAL
      CommitMessage              => 'MyMessage',          # OPTIONAL
      ConflictDetailLevel        => 'FILE_LEVEL',         # OPTIONAL
      ConflictResolution         => {
        DeleteFiles => [
          {
            FilePath => 'MyPath',

          },
          ...
        ],                                                # OPTIONAL
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
      ConflictResolutionStrategy => 'NONE',            # OPTIONAL
      Email                      => 'MyEmail',         # OPTIONAL
      KeepEmptyFolders           => 1,                 # OPTIONAL
      TargetBranch               => 'MyBranchName',    # OPTIONAL
    );

    # Results:
    my $CommitId = $MergeBranchesByThreeWayOutput->CommitId;
    my $TreeId   = $MergeBranchesByThreeWayOutput->TreeId;

    # Returns a L<Paws::CodeCommit::MergeBranchesByThreeWayOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/MergeBranchesByThreeWay>

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

=head2 B<REQUIRED> DestinationCommitSpecifier => Str

The branch, tag, HEAD, or other fully qualified reference used to
identify a commit. For example, a branch name or a full commit ID.



=head2 Email => Str

The email address of the person merging the branches. This information
will be used in the commit information for the merge.



=head2 KeepEmptyFolders => Bool

If the commit contains deletions, whether to keep a folder or folder
structure if the changes leave the folders empty. If this is specified
as true, a .gitkeep file will be created for empty folders. The default
is false.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository where you want to merge two branches.



=head2 B<REQUIRED> SourceCommitSpecifier => Str

The branch, tag, HEAD, or other fully qualified reference used to
identify a commit. For example, a branch name or a full commit ID.



=head2 TargetBranch => Str

The branch where the merge will be applied.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method MergeBranchesByThreeWay in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

