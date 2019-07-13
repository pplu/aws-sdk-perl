
package Paws::CodeCommit::GetFile;
  use Moose;
  has CommitSpecifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitSpecifier' );
  has FilePath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filePath' , required => 1);
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::GetFileOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetFile - Arguments for method GetFile on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFile on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method GetFile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFile.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $GetFileOutput = $codecommit->GetFile(
      FilePath        => 'MyPath',
      RepositoryName  => 'MyRepositoryName',
      CommitSpecifier => 'MyCommitName',       # OPTIONAL
    );

    # Results:
    my $BlobId      = $GetFileOutput->BlobId;
    my $CommitId    = $GetFileOutput->CommitId;
    my $FileContent = $GetFileOutput->FileContent;
    my $FileMode    = $GetFileOutput->FileMode;
    my $FilePath    = $GetFileOutput->FilePath;
    my $FileSize    = $GetFileOutput->FileSize;

    # Returns a L<Paws::CodeCommit::GetFileOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/GetFile>

=head1 ATTRIBUTES


=head2 CommitSpecifier => Str

The fully-quaified reference that identifies the commit that contains
the file. For example, you could specify a full commit ID, a tag, a
branch name, or a reference such as refs/heads/master. If none is
provided, then the head commit will be used.



=head2 B<REQUIRED> FilePath => Str

The fully-qualified path to the file, including the full name and
extension of the file. For example, /examples/file.md is the
fully-qualified path to a file named file.md in a folder named
examples.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository that contains the file.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFile in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

