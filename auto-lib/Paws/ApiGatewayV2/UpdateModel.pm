
package Paws::ApiGatewayV2::UpdateModel;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has ContentType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentType');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ModelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'modelId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Schema => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'schema');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/models/{modelId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::UpdateModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateModel - Arguments for method UpdateModel on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateModel on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method UpdateModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateModel.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $UpdateModelResponse = $apigateway->UpdateModel(
      ApiId       => 'My__string',
      ModelId     => 'My__string',
      ContentType => 'MyStringWithLengthBetween1And256',     # OPTIONAL
      Description => 'MyStringWithLengthBetween0And1024',    # OPTIONAL
      Name        => 'MyStringWithLengthBetween1And128',     # OPTIONAL
      Schema      => 'MyStringWithLengthBetween0And32K',     # OPTIONAL
    );

    # Results:
    my $ContentType = $UpdateModelResponse->ContentType;
    my $Description = $UpdateModelResponse->Description;
    my $ModelId     = $UpdateModelResponse->ModelId;
    my $Name        = $UpdateModelResponse->Name;
    my $Schema      = $UpdateModelResponse->Schema;

    # Returns a L<Paws::ApiGatewayV2::UpdateModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 ContentType => Str

The content-type for the model, for example, "application/json".



=head2 Description => Str

The description of the model.



=head2 B<REQUIRED> ModelId => Str

The model ID.



=head2 Name => Str

The name of the model.



=head2 Schema => Str

The schema for the model. For application/json models, this should be
JSON schema draft 4 model.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateModel in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

