# Generated from default/object.tt
package Paws::ApiGatewayV2::Api;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_Tags/;
  has ApiEndpoint => (is => 'ro', isa => Str);
  has ApiId => (is => 'ro', isa => Str);
  has ApiKeySelectionExpression => (is => 'ro', isa => Str);
  has CreatedDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has DisableSchemaValidation => (is => 'ro', isa => Bool);
  has Name => (is => 'ro', isa => Str, required => 1);
  has ProtocolType => (is => 'ro', isa => Str, required => 1);
  has RouteSelectionExpression => (is => 'ro', isa => Str, required => 1);
  has Tags => (is => 'ro', isa => ApiGatewayV2_Tags);
  has Version => (is => 'ro', isa => Str);
  has Warnings => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'ProtocolType' => {
                                   'type' => 'Str'
                                 },
               'ApiKeySelectionExpression' => {
                                                'type' => 'Str'
                                              },
               'DisableSchemaValidation' => {
                                              'type' => 'Bool'
                                            },
               'ApiEndpoint' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'Warnings' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               'RouteSelectionExpression' => {
                                               'type' => 'Str'
                                             },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Version' => {
                              'type' => 'Str'
                            },
               'Tags' => {
                           'class' => 'Paws::ApiGatewayV2::Tags',
                           'type' => 'ApiGatewayV2_Tags'
                         },
               'ApiId' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'ApiId' => 'apiId',
                       'Version' => 'version',
                       'RouteSelectionExpression' => 'routeSelectionExpression',
                       'Warnings' => 'warnings',
                       'Description' => 'description',
                       'DisableSchemaValidation' => 'disableSchemaValidation',
                       'ApiEndpoint' => 'apiEndpoint',
                       'Name' => 'name',
                       'ProtocolType' => 'protocolType',
                       'ApiKeySelectionExpression' => 'apiKeySelectionExpression',
                       'CreatedDate' => 'createdDate'
                     },
  'IsRequired' => {
                    'ProtocolType' => 1,
                    'Name' => 1,
                    'RouteSelectionExpression' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::Api

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::Api object:

  $service_obj->Method(Att1 => { ApiEndpoint => $value, ..., Warnings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::Api object:

  $result = $service_obj->Method(...);
  $result->Att1->ApiEndpoint

=head1 DESCRIPTION

Represents an API.

=head1 ATTRIBUTES


=head2 ApiEndpoint => Str

  The URI of the API, of the form
{api-id}.execute-api.{region}.amazonaws.com. The stage name is
typically appended to this URI to form a complete path to a deployed
API stage.


=head2 ApiId => Str

  The API ID.


=head2 ApiKeySelectionExpression => Str

  An API key selection expression. See API Key Selection Expressions
(https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).


=head2 CreatedDate => Str

  The timestamp when the API was created.


=head2 Description => Str

  The description of the API.


=head2 DisableSchemaValidation => Bool

  Avoid validating models when creating a deployment.


=head2 B<REQUIRED> Name => Str

  The name of the API.


=head2 B<REQUIRED> ProtocolType => Str

  The API protocol: Currently only WEBSOCKET is supported.


=head2 B<REQUIRED> RouteSelectionExpression => Str

  The route selection expression for the API.


=head2 Tags => ApiGatewayV2_Tags

  The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with aws:. The tag value can be up to 256 characters..


=head2 Version => Str

  A version identifier for the API.


=head2 Warnings => ArrayRef[Str|Undef]

  The warning messages reported when failonwarnings is turned on during
API import.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

