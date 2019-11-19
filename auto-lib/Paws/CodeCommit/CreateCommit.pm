# Generated from json/callargs_class.tt

package Paws::CodeCommit::CreateCommit;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::CodeCommit::Types qw/CodeCommit_DeleteFileEntry CodeCommit_SetFileModeEntry CodeCommit_PutFileEntry/;
  has AuthorName => (is => 'ro', isa => Str, predicate => 1);
  has BranchName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has CommitMessage => (is => 'ro', isa => Str, predicate => 1);
  has DeleteFiles => (is => 'ro', isa => ArrayRef[CodeCommit_DeleteFileEntry], predicate => 1);
  has Email => (is => 'ro', isa => Str, predicate => 1);
  has KeepEmptyFolders => (is => 'ro', isa => Bool, predicate => 1);
  has ParentCommitId => (is => 'ro', isa => Str, predicate => 1);
  has PutFiles => (is => 'ro', isa => ArrayRef[CodeCommit_PutFileEntry], predicate => 1);
  has RepositoryName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SetFileModes => (is => 'ro', isa => ArrayRef[CodeCommit_SetFileModeEntry], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateCommit');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeCommit::CreateCommitOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeleteFiles' => {
                                  'type' => 'ArrayRef[CodeCommit_DeleteFileEntry]',
                                  'class' => 'Paws::CodeCommit::DeleteFileEntry'
                                },
               'ParentCommitId' => {
                                     'type' => 'Str'
                                   },
               'Email' => {
                            'type' => 'Str'
                          },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'PutFiles' => {
                               'type' => 'ArrayRef[CodeCommit_PutFileEntry]',
                               'class' => 'Paws::CodeCommit::PutFileEntry'
                             },
               'CommitMessage' => {
                                    'type' => 'Str'
                                  },
               'SetFileModes' => {
                                   'class' => 'Paws::CodeCommit::SetFileModeEntry',
                                   'type' => 'ArrayRef[CodeCommit_SetFileModeEntry]'
                                 },
               'AuthorName' => {
                                 'type' => 'Str'
                               },
               'BranchName' => {
                                 'type' => 'Str'
                               },
               'KeepEmptyFolders' => {
                                       'type' => 'Bool'
                                     }
             },
  'IsRequired' => {
                    'RepositoryName' => 1,
                    'BranchName' => 1
                  },
  'NameInRequest' => {
                       'DeleteFiles' => 'deleteFiles',
                       'PutFiles' => 'putFiles',
                       'Email' => 'email',
                       'RepositoryName' => 'repositoryName',
                       'ParentCommitId' => 'parentCommitId',
                       'SetFileModes' => 'setFileModes',
                       'CommitMessage' => 'commitMessage',
                       'KeepEmptyFolders' => 'keepEmptyFolders',
                       'BranchName' => 'branchName',
                       'AuthorName' => 'authorName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::CreateCommit - Arguments for method CreateCommit on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCommit on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method CreateCommit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCommit.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $CreateCommitOutput = $codecommit->CreateCommit(
      BranchName     => 'MyBranchName',
      RepositoryName => 'MyRepositoryName',
      AuthorName     => 'MyName',             # OPTIONAL
      CommitMessage  => 'MyMessage',          # OPTIONAL
      DeleteFiles    => [
        {
          FilePath => 'MyPath',

        },
        ...
      ],                                      # OPTIONAL
      Email            => 'MyEmail',          # OPTIONAL
      KeepEmptyFolders => 1,                  # OPTIONAL
      ParentCommitId   => 'MyCommitId',       # OPTIONAL
      PutFiles         => [
        {
          FilePath    => 'MyPath',
          FileContent => 'BlobFileContent',    # max: 6291456; OPTIONAL
          FileMode =>
            'EXECUTABLE',    # values: EXECUTABLE, NORMAL, SYMLINK; OPTIONAL
          SourceFile => {
            FilePath => 'MyPath',
            IsMove   => 1,          # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      SetFileModes => [
        {
          FileMode =>
            'EXECUTABLE',    # values: EXECUTABLE, NORMAL, SYMLINK; OPTIONAL
          FilePath => 'MyPath',

        },
        ...
      ],                     # OPTIONAL
    );

    # Results:
    my $CommitId     = $CreateCommitOutput->CommitId;
    my $FilesAdded   = $CreateCommitOutput->FilesAdded;
    my $FilesDeleted = $CreateCommitOutput->FilesDeleted;
    my $FilesUpdated = $CreateCommitOutput->FilesUpdated;
    my $TreeId       = $CreateCommitOutput->TreeId;

    # Returns a L<Paws::CodeCommit::CreateCommitOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/CreateCommit>

=head1 ATTRIBUTES


=head2 AuthorName => Str

The name of the author who created the commit. This information will be
used as both the author and committer for the commit.



=head2 B<REQUIRED> BranchName => Str

The name of the branch where you will create the commit.



=head2 CommitMessage => Str

The commit message you want to include as part of creating the commit.
Commit messages are limited to 256 KB. If no message is specified, a
default message will be used.



=head2 DeleteFiles => ArrayRef[CodeCommit_DeleteFileEntry]

The files to delete in this commit. These files will still exist in
prior commits.



=head2 Email => Str

The email address of the person who created the commit.



=head2 KeepEmptyFolders => Bool

If the commit contains deletions, whether to keep a folder or folder
structure if the changes leave the folders empty. If this is specified
as true, a .gitkeep file will be created for empty folders. The default
is false.



=head2 ParentCommitId => Str

The ID of the commit that is the parent of the commit you will create.
If this is an empty repository, this is not required.



=head2 PutFiles => ArrayRef[CodeCommit_PutFileEntry]

The files to add or update in this commit.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository where you will create the commit.



=head2 SetFileModes => ArrayRef[CodeCommit_SetFileModeEntry]

The file modes to update for files in this commit.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCommit in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

