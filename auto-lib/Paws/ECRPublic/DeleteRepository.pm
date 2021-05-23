
package Paws::ECRPublic::DeleteRepository;
  use Moose;
  has Force => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'force' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRepository');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECRPublic::DeleteRepositoryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::DeleteRepository - Arguments for method DeleteRepository on L<Paws::ECRPublic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRepository on the
L<Amazon Elastic Container Registry Public|Paws::ECRPublic> service. Use the attributes of this class
as arguments to method DeleteRepository.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRepository.

=head1 SYNOPSIS

    my $api.ecr-public = Paws->service('ECRPublic');
    my $DeleteRepositoryResponse = $api . ecr-public->DeleteRepository(
      RepositoryName => 'MyRepositoryName',
      Force          => 1,                    # OPTIONAL
      RegistryId     => 'MyRegistryId',       # OPTIONAL
    );

    # Results:
    my $Repository = $DeleteRepositoryResponse->Repository;

    # Returns a L<Paws::ECRPublic::DeleteRepositoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr-public/DeleteRepository>

=head1 ATTRIBUTES


=head2 Force => Bool

If a repository contains images, forces the deletion.



=head2 RegistryId => Str

The AWS account ID associated with the public registry that contains
the repository to delete. If you do not specify a registry, the default
public registry is assumed.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRepository in L<Paws::ECRPublic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

