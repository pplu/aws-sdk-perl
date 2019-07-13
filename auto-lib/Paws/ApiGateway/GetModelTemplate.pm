
package Paws::ApiGateway::GetModelTemplate;
  use Moose;
  has ModelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'model_name', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetModelTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/models/{model_name}/default_template');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Template');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetModelTemplate - Arguments for method GetModelTemplate on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetModelTemplate on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetModelTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetModelTemplate.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Template = $apigateway->GetModelTemplate(
      ModelName => 'MyString',
      RestApiId => 'MyString',

    );

    # Results:
    my $Value = $Template->Value;

    # Returns a L<Paws::ApiGateway::Template> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetModelTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelName => Str

[Required] The name of the model for which to generate a template.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetModelTemplate in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

