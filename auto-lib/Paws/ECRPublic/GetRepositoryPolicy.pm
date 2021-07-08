
package Paws::ECRPublic::GetRepositoryPolicy;
  use Moose;
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRepositoryPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECRPublic::GetRepositoryPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::GetRepositoryPolicy - Arguments for method GetRepositoryPolicy on L<Paws::ECRPublic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRepositoryPolicy on the
L<Amazon Elastic Container Registry Public|Paws::ECRPublic> service. Use the attributes of this class
as arguments to method GetRepositoryPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRepositoryPolicy.

=head1 SYNOPSIS

    my $api.ecr-public = Paws->service('ECRPublic');
    my $GetRepositoryPolicyResponse = $api . ecr-public->GetRepositoryPolicy(
      RepositoryName => 'MyRepositoryName',
      RegistryId     => 'MyRegistryId',       # OPTIONAL
    );

    # Results:
    my $PolicyText     = $GetRepositoryPolicyResponse->PolicyText;
    my $RegistryId     = $GetRepositoryPolicyResponse->RegistryId;
    my $RepositoryName = $GetRepositoryPolicyResponse->RepositoryName;

    # Returns a L<Paws::ECRPublic::GetRepositoryPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr-public/GetRepositoryPolicy>

=head1 ATTRIBUTES


=head2 RegistryId => Str

The AWS account ID associated with the public registry that contains
the repository. If you do not specify a registry, the default public
registry is assumed.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository with the policy to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRepositoryPolicy in L<Paws::ECRPublic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

