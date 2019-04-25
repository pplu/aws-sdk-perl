
package Paws::ECR::GetAuthorizationToken;
  use Moose;
  has RegistryIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'registryIds' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAuthorizationToken');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::GetAuthorizationTokenResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::GetAuthorizationToken - Arguments for method GetAuthorizationToken on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAuthorizationToken on the
L<Amazon EC2 Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method GetAuthorizationToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAuthorizationToken.

=head1 SYNOPSIS

    my $ecr = Paws->service('ECR');
    # To obtain an authorization token
    # This example gets an authorization token for your default registry.
    my $GetAuthorizationTokenResponse = $ecr->GetAuthorizationToken();

    # Results:
    my $authorizationData = $GetAuthorizationTokenResponse->authorizationData;

    # Returns a L<Paws::ECR::GetAuthorizationTokenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecr/GetAuthorizationToken>

=head1 ATTRIBUTES


=head2 RegistryIds => ArrayRef[Str|Undef]

A list of AWS account IDs that are associated with the registries for
which to get authorization tokens. If you do not specify a registry,
the default registry is assumed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAuthorizationToken in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

