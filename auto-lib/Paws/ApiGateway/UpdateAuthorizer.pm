
package Paws::ApiGateway::UpdateAuthorizer;
  use Moose;
  has AuthorizerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'authorizer_id', required => 1);
  has PatchOperations => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::PatchOperation]', traits => ['NameInRequest'], request_name => 'patchOperations');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAuthorizer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/authorizers/{authorizer_id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Authorizer');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateAuthorizer - Arguments for method UpdateAuthorizer on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAuthorizer on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method UpdateAuthorizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAuthorizer.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Authorizer = $apigateway->UpdateAuthorizer(
      AuthorizerId    => 'MyString',
      RestApiId       => 'MyString',
      PatchOperations => [
        {
          From => 'MyString',
          Op =>
            'add',    # values: add, remove, replace, move, copy, test; OPTIONAL
          Path  => 'MyString',
          Value => 'MyString',
        },
        ...
      ],              # OPTIONAL
    );

    # Results:
    my $AuthType              = $Authorizer->AuthType;
    my $AuthorizerCredentials = $Authorizer->AuthorizerCredentials;
    my $AuthorizerResultTtlInSeconds =
      $Authorizer->AuthorizerResultTtlInSeconds;
    my $AuthorizerUri  = $Authorizer->AuthorizerUri;
    my $Id             = $Authorizer->Id;
    my $IdentitySource = $Authorizer->IdentitySource;
    my $IdentityValidationExpression =
      $Authorizer->IdentityValidationExpression;
    my $Name         = $Authorizer->Name;
    my $ProviderARNs = $Authorizer->ProviderARNs;
    my $Type         = $Authorizer->Type;

    # Returns a L<Paws::ApiGateway::Authorizer> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateAuthorizer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthorizerId => Str

[Required] The identifier of the Authorizer resource.



=head2 PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]

A list of update operations to be applied to the specified resource and
in the order specified in this list.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAuthorizer in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

