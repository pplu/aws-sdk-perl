
package Paws::ApiGateway::GetRestApi;
  use Moose;
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRestApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::RestApi');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetRestApi - Arguments for method GetRestApi on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRestApi on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetRestApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRestApi.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $RestApi = $apigateway->GetRestApi(
      RestApiId => 'MyString',

    );

    # Results:
    my $ApiKeySource           = $RestApi->ApiKeySource;
    my $BinaryMediaTypes       = $RestApi->BinaryMediaTypes;
    my $CreatedDate            = $RestApi->CreatedDate;
    my $Description            = $RestApi->Description;
    my $EndpointConfiguration  = $RestApi->EndpointConfiguration;
    my $Id                     = $RestApi->Id;
    my $MinimumCompressionSize = $RestApi->MinimumCompressionSize;
    my $Name                   = $RestApi->Name;
    my $Policy                 = $RestApi->Policy;
    my $Version                = $RestApi->Version;
    my $Warnings               = $RestApi->Warnings;

    # Returns a L<Paws::ApiGateway::RestApi> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetRestApi>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRestApi in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

