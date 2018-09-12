
package Paws::CodeCommit::PutFile;
  use Moose;
  has BranchName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'branchName' , required => 1);
  has CommitMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitMessage' );
  has Email => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'email' );
  has FileContent => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileContent' , required => 1);
  has FileMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileMode' );
  has FilePath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filePath' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has ParentCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentCommitId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutFile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::PutFileOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PutFile - Arguments for method PutFile on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutFile on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method PutFile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutFile.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $PutFileOutput = $codecommit->PutFile(
      BranchName     => 'MyBranchName',
      FileContent    => 'BlobFileContent',
      FilePath       => 'MyPath',
      RepositoryName => 'MyRepositoryName',
      CommitMessage  => 'MyMessage',          # OPTIONAL
      Email          => 'MyEmail',            # OPTIONAL
      FileMode       => 'EXECUTABLE',         # OPTIONAL
      Name           => 'MyName',             # OPTIONAL
      ParentCommitId => 'MyCommitId',         # OPTIONAL
    );

    # Results:
    my $BlobId   = $PutFileOutput->BlobId;
    my $CommitId = $PutFileOutput->CommitId;
    my $TreeId   = $PutFileOutput->TreeId;

    # Returns a L<Paws::CodeCommit::PutFileOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/PutFile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BranchName => Str

The name of the branch where you want to add or update the file. If
this is an empty repository, this branch will be created.



=head2 CommitMessage => Str

A message about why this file was added or updated. While optional,
adding a message is strongly encouraged in order to provide a more
useful commit history for your repository.



=head2 Email => Str

An email address for the person adding or updating the file.



=head2 B<REQUIRED> FileContent => Str

The content of the file, in binary object format.



=head2 FileMode => Str

The file mode permissions of the blob. Valid file mode permissions are
listed below.

Valid values are: C<"EXECUTABLE">, C<"NORMAL">, C<"SYMLINK">

=head2 B<REQUIRED> FilePath => Str

The name of the file you want to add or update, including the relative
path to the file in the repository.

If the path does not currently exist in the repository, the path will
be created as part of adding the file.



=head2 Name => Str

The name of the person adding or updating the file. While optional,
adding a name is strongly encouraged in order to provide a more useful
commit history for your repository.



=head2 ParentCommitId => Str

The full commit ID of the head commit in the branch where you want to
add or update the file. If this is an empty repository, no commit ID is
required. If this is not an empty repository, a commit ID is required.

The commit ID must match the ID of the head commit at the time of the
operation, or an error will occur, and the file will not be added or
updated.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository where you want to add or update the file.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutFile in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

