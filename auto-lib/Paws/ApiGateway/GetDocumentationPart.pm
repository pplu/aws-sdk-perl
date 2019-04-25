
package Paws::ApiGateway::GetDocumentationPart;
  use Moose;
  has DocumentationPartId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'part_id', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDocumentationPart');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/documentation/parts/{part_id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::DocumentationPart');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetDocumentationPart - Arguments for method GetDocumentationPart on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDocumentationPart on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetDocumentationPart.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDocumentationPart.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $DocumentationPart = $apigateway->GetDocumentationPart(
      DocumentationPartId => 'MyString',
      RestApiId           => 'MyString',

    );

    # Results:
    my $Id         = $DocumentationPart->Id;
    my $Location   = $DocumentationPart->Location;
    my $Properties = $DocumentationPart->Properties;

    # Returns a L<Paws::ApiGateway::DocumentationPart> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetDocumentationPart>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DocumentationPartId => Str

[Required] The string identifier of the associated RestApi.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDocumentationPart in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

