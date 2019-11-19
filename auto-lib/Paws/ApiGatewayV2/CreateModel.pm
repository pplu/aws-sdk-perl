
package Paws::ApiGatewayV2::CreateModel;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw//;
  has ApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ContentType => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Schema => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateModel');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v2/apis/{apiId}/models');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGatewayV2::CreateModelResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'ContentType' => {
                                  'type' => 'Str'
                                },
               'ApiId' => {
                            'type' => 'Str'
                          },
               'Schema' => {
                             'type' => 'Str'
                           },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Name' => 1,
                    'ApiId' => 1,
                    'Schema' => 1
                  },
  'NameInRequest' => {
                       'Name' => 'name',
                       'ContentType' => 'contentType',
                       'Schema' => 'schema',
                       'Description' => 'description'
                     },
  'ParamInURI' => {
                    'ApiId' => 'apiId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateModel - Arguments for method CreateModel on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateModel on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method CreateModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateModel.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $CreateModelResponse = $apigateway->CreateModel(
      ApiId       => 'My__string',
      Name        => 'MyStringWithLengthBetween1And128',
      Schema      => 'MyStringWithLengthBetween0And32K',
      ContentType => 'MyStringWithLengthBetween1And256',     # OPTIONAL
      Description => 'MyStringWithLengthBetween0And1024',    # OPTIONAL
    );

    # Results:
    my $ContentType = $CreateModelResponse->ContentType;
    my $Description = $CreateModelResponse->Description;
    my $ModelId     = $CreateModelResponse->ModelId;
    my $Name        = $CreateModelResponse->Name;
    my $Schema      = $CreateModelResponse->Schema;

    # Returns a L<Paws::ApiGatewayV2::CreateModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 ContentType => Str

The content-type for the model, for example, "application/json".



=head2 Description => Str

The description of the model.



=head2 B<REQUIRED> Name => Str

The name of the model. Must be alphanumeric.



=head2 B<REQUIRED> Schema => Str

The schema for the model. For application/json models, this should be
JSON schema draft 4 model.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateModel in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

