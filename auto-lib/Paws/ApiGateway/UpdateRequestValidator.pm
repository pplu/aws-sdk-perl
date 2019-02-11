
package Paws::ApiGateway::UpdateRequestValidator;
  use Moose;
  has PatchOperations => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::PatchOperation]', traits => ['NameInRequest'], request_name => 'patchOperations');
  has RequestValidatorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'requestvalidator_id', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRequestValidator');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::RequestValidator');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateRequestValidator - Arguments for method UpdateRequestValidator on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRequestValidator on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method UpdateRequestValidator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRequestValidator.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $RequestValidator = $apigateway->UpdateRequestValidator(
      RequestValidatorId => 'MyString',
      RestApiId          => 'MyString',
      PatchOperations    => [
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
    my $Id                  = $RequestValidator->Id;
    my $Name                = $RequestValidator->Name;
    my $ValidateRequestBody = $RequestValidator->ValidateRequestBody;
    my $ValidateRequestParameters =
      $RequestValidator->ValidateRequestParameters;

    # Returns a L<Paws::ApiGateway::RequestValidator> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateRequestValidator>

=head1 ATTRIBUTES


=head2 PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]

A list of update operations to be applied to the specified resource and
in the order specified in this list.



=head2 B<REQUIRED> RequestValidatorId => Str

[Required] The identifier of RequestValidator to be updated.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRequestValidator in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

