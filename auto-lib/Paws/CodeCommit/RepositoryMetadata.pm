package Paws::CodeCommit::RepositoryMetadata;
  use Moose;
  has accountId => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has cloneUrlHttp => (is => 'ro', isa => 'Str');
  has cloneUrlSsh => (is => 'ro', isa => 'Str');
  has creationDate => (is => 'ro', isa => 'Str');
  has defaultBranch => (is => 'ro', isa => 'Str');
  has lastModifiedDate => (is => 'ro', isa => 'Str');
  has repositoryDescription => (is => 'ro', isa => 'Str');
  has repositoryId => (is => 'ro', isa => 'Str');
  has repositoryName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::RepositoryMetadata

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::RepositoryMetadata object:

  $service_obj->Method(Att1 => { accountId => $value, ..., repositoryName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::RepositoryMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->accountId

=head1 ATTRIBUTES

=head2 accountId => Str

  

The ID of the AWS account associated with the repository.










=head2 Arn => Str

  

The Amazon Resource Name (ARN) of the repository.










=head2 cloneUrlHttp => Str

  

The URL to use for cloning the repository over HTTPS.










=head2 cloneUrlSsh => Str

  

The URL to use for cloning the repository over SSH.










=head2 creationDate => Str

  

The date and time the repository was created, in timestamp format.










=head2 defaultBranch => Str

  

The repository's default branch name.










=head2 lastModifiedDate => Str

  

The date and time the repository was last modified, in timestamp
format.










=head2 repositoryDescription => Str

  

A comment or description about the repository.










=head2 repositoryId => Str

  

The ID of the repository.










=head2 repositoryName => Str

  

The repository's name.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

