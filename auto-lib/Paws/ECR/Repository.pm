package Paws::ECR::Repository;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has RegistryId => (is => 'ro', isa => 'Str', request_name => 'registryId', traits => ['NameInRequest']);
  has RepositoryArn => (is => 'ro', isa => 'Str', request_name => 'repositoryArn', traits => ['NameInRequest']);
  has RepositoryName => (is => 'ro', isa => 'Str', request_name => 'repositoryName', traits => ['NameInRequest']);
  has RepositoryUri => (is => 'ro', isa => 'Str', request_name => 'repositoryUri', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::Repository

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECR::Repository object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., RepositoryUri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECR::Repository object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

An object representing a repository.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  The date and time, in JavaScript date format, when the repository was
created.


=head2 RegistryId => Str

  The AWS account ID associated with the registry that contains the
repository.


=head2 RepositoryArn => Str

  The Amazon Resource Name (ARN) that identifies the repository. The ARN
contains the C<arn:aws:ecr> namespace, followed by the region of the
repository, AWS account ID of the repository owner, repository
namespace, and repository name. For example,
C<arn:aws:ecr:region:012345678910:repository/test>.


=head2 RepositoryName => Str

  The name of the repository.


=head2 RepositoryUri => Str

  The URI for the repository. You can use this URI for Docker C<push> or
C<pull> operations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

