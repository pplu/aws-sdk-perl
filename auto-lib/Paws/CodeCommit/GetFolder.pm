
package Paws::CodeCommit::GetFolder;
  use Moose;
  has CommitSpecifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitSpecifier' );
  has FolderPath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'folderPath' , required => 1);
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFolder');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::GetFolderOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetFolder - Arguments for method GetFolder on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFolder on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method GetFolder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFolder.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $GetFolderOutput = $codecommit->GetFolder(
      FolderPath      => 'MyPath',
      RepositoryName  => 'MyRepositoryName',
      CommitSpecifier => 'MyCommitName',       # OPTIONAL
    );

    # Results:
    my $CommitId      = $GetFolderOutput->CommitId;
    my $Files         = $GetFolderOutput->Files;
    my $FolderPath    = $GetFolderOutput->FolderPath;
    my $SubFolders    = $GetFolderOutput->SubFolders;
    my $SubModules    = $GetFolderOutput->SubModules;
    my $SymbolicLinks = $GetFolderOutput->SymbolicLinks;
    my $TreeId        = $GetFolderOutput->TreeId;

    # Returns a L<Paws::CodeCommit::GetFolderOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/GetFolder>

=head1 ATTRIBUTES


=head2 CommitSpecifier => Str

A fully-qualified reference used to identify a commit that contains the
version of the folder's content to return. A fully-qualified reference
can be a commit ID, branch name, tag, or reference such as HEAD. If no
specifier is provided, the folder content will be returned as it exists
in the HEAD commit.



=head2 B<REQUIRED> FolderPath => Str

The fully-qualified path to the folder whose contents will be returned,
including the folder name. For example, /examples is a fully-qualified
path to a folder named examples that was created off of the root
directory (/) of a repository.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFolder in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

