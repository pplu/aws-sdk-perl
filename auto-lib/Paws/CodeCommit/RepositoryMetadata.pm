package Paws::CodeCommit::RepositoryMetadata;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest']);
  has Arn => (is => 'ro', isa => 'Str');
  has CloneUrlHttp => (is => 'ro', isa => 'Str', request_name => 'cloneUrlHttp', traits => ['NameInRequest']);
  has CloneUrlSsh => (is => 'ro', isa => 'Str', request_name => 'cloneUrlSsh', traits => ['NameInRequest']);
  has CreationDate => (is => 'ro', isa => 'Str', request_name => 'creationDate', traits => ['NameInRequest']);
  has DefaultBranch => (is => 'ro', isa => 'Str', request_name => 'defaultBranch', traits => ['NameInRequest']);
  has LastModifiedDate => (is => 'ro', isa => 'Str', request_name => 'lastModifiedDate', traits => ['NameInRequest']);
  has RepositoryDescription => (is => 'ro', isa => 'Str', request_name => 'repositoryDescription', traits => ['NameInRequest']);
  has RepositoryId => (is => 'ro', isa => 'Str', request_name => 'repositoryId', traits => ['NameInRequest']);
  has RepositoryName => (is => 'ro', isa => 'Str', request_name => 'repositoryName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::RepositoryMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::RepositoryMetadata object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., RepositoryName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::RepositoryMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Information about a repository.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The ID of the AWS account associated with the repository.


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the repository.


=head2 CloneUrlHttp => Str

  The URL to use for cloning the repository over HTTPS.


=head2 CloneUrlSsh => Str

  The URL to use for cloning the repository over SSH.


=head2 CreationDate => Str

  The date and time the repository was created, in timestamp format.


=head2 DefaultBranch => Str

  The repository's default branch name.


=head2 LastModifiedDate => Str

  The date and time the repository was last modified, in timestamp
format.


=head2 RepositoryDescription => Str

  A comment or description about the repository.


=head2 RepositoryId => Str

  The ID of the repository.


=head2 RepositoryName => Str

  The repository's name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

