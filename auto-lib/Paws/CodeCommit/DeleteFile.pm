
package Paws::CodeCommit::DeleteFile;
  use Moose;
  has BranchName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'branchName' , required => 1);
  has CommitMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitMessage' );
  has Email => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'email' );
  has FilePath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filePath' , required => 1);
  has KeepEmptyFolders => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'keepEmptyFolders' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has ParentCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentCommitId' , required => 1);
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::DeleteFileOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::DeleteFile - Arguments for method DeleteFile on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFile on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method DeleteFile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFile.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $DeleteFileOutput = $codecommit->DeleteFile(
      BranchName       => 'MyBranchName',
      FilePath         => 'MyPath',
      ParentCommitId   => 'MyCommitId',
      RepositoryName   => 'MyRepositoryName',
      CommitMessage    => 'MyMessage',          # OPTIONAL
      Email            => 'MyEmail',            # OPTIONAL
      KeepEmptyFolders => 1,                    # OPTIONAL
      Name             => 'MyName',             # OPTIONAL
    );

    # Results:
    my $BlobId   = $DeleteFileOutput->BlobId;
    my $CommitId = $DeleteFileOutput->CommitId;
    my $FilePath = $DeleteFileOutput->FilePath;
    my $TreeId   = $DeleteFileOutput->TreeId;

    # Returns a L<Paws::CodeCommit::DeleteFileOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/DeleteFile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BranchName => Str

The name of the branch where the commit will be made deleting the file.



=head2 CommitMessage => Str

The commit message you want to include as part of deleting the file.
Commit messages are limited to 256 KB. If no message is specified, a
default message will be used.



=head2 Email => Str

The email address for the commit that deletes the file. If no email
address is specified, the email address will be left blank.



=head2 B<REQUIRED> FilePath => Str

The fully-qualified path to the file that will be deleted, including
the full name and extension of that file. For example,
/examples/file.md is a fully qualified path to a file named file.md in
a folder named examples.



=head2 KeepEmptyFolders => Bool

Specifies whether to delete the folder or directory that contains the
file you want to delete if that file is the only object in the folder
or directory. By default, empty folders will be deleted. This includes
empty folders that are part of the directory structure. For example, if
the path to a file is dir1/dir2/dir3/dir4, and dir2 and dir3 are empty,
deleting the last file in dir4 will also delete the empty folders dir4,
dir3, and dir2.



=head2 Name => Str

The name of the author of the commit that deletes the file. If no name
is specified, the user's ARN will be used as the author name and
committer name.



=head2 B<REQUIRED> ParentCommitId => Str

The ID of the commit that is the tip of the branch where you want to
create the commit that will delete the file. This must be the HEAD
commit for the branch. The commit that deletes the file will be created
from this commit ID.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository that contains the file to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFile in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

