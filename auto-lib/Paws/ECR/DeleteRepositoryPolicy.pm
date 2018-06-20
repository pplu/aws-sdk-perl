
package Paws::ECR::DeleteRepositoryPolicy;
  use Moose;
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRepositoryPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::DeleteRepositoryPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::DeleteRepositoryPolicy - Arguments for method DeleteRepositoryPolicy on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRepositoryPolicy on the
L<Amazon EC2 Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method DeleteRepositoryPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRepositoryPolicy.

=head1 SYNOPSIS

    my $ecr = Paws->service('ECR');
   # To delete the policy associated with a repository
   # This example deletes the policy associated with the repository named ubuntu
   # in the current account.
    my $DeleteRepositoryPolicyResponse = $ecr->DeleteRepositoryPolicy(
      {
        'RepositoryName' => 'ubuntu'
      }
    );

    # Results:
    my $policyText     = $DeleteRepositoryPolicyResponse->policyText;
    my $registryId     = $DeleteRepositoryPolicyResponse->registryId;
    my $repositoryName = $DeleteRepositoryPolicyResponse->repositoryName;

    # Returns a L<Paws::ECR::DeleteRepositoryPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecr/DeleteRepositoryPolicy>

=head1 ATTRIBUTES


=head2 RegistryId => Str

The AWS account ID associated with the registry that contains the
repository policy to delete. If you do not specify a registry, the
default registry is assumed.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository that is associated with the repository
policy to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRepositoryPolicy in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

