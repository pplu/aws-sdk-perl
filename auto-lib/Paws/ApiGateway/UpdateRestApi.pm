
package Paws::ApiGateway::UpdateRestApi;
  use Moose;
  has PatchOperations => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::PatchOperation]', traits => ['NameInRequest'], request_name => 'patchOperations');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRestApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::RestApi');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateRestApi - Arguments for method UpdateRestApi on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRestApi on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method UpdateRestApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRestApi.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $RestApi = $apigateway->UpdateRestApi(
      RestApiId       => 'MyString',
      PatchOperations => [
        {
          from  => 'MyString',
          value => 'MyString',
          path  => 'MyString',
          op =>
            'add',    # values: add, remove, replace, move, copy, test; OPTIONAL
        },
        ...
      ],              # OPTIONAL
    );

    # Results:
    my $Id                     = $RestApi->Id;
    my $BinaryMediaTypes       = $RestApi->BinaryMediaTypes;
    my $ApiKeySource           = $RestApi->ApiKeySource;
    my $EndpointConfiguration  = $RestApi->EndpointConfiguration;
    my $CreatedDate            = $RestApi->CreatedDate;
    my $Version                = $RestApi->Version;
    my $MinimumCompressionSize = $RestApi->MinimumCompressionSize;
    my $Policy                 = $RestApi->Policy;
    my $Warnings               = $RestApi->Warnings;
    my $Description            = $RestApi->Description;
    my $Name                   = $RestApi->Name;

    # Returns a L<Paws::ApiGateway::RestApi> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/apigateway/>

=head1 ATTRIBUTES


=head2 PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]

A list of update operations to be applied to the specified resource and
in the order specified in this list.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRestApi in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

