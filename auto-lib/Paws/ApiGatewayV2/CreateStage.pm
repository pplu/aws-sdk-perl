
package Paws::ApiGatewayV2::CreateStage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_AccessLogSettings ApiGatewayV2_RouteSettings ApiGatewayV2_StageVariablesMap ApiGatewayV2_Tags ApiGatewayV2_RouteSettingsMap/;
  has AccessLogSettings => (is => 'ro', isa => ApiGatewayV2_AccessLogSettings, predicate => 1);
  has ApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ClientCertificateId => (is => 'ro', isa => Str, predicate => 1);
  has DefaultRouteSettings => (is => 'ro', isa => ApiGatewayV2_RouteSettings, predicate => 1);
  has DeploymentId => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has RouteSettings => (is => 'ro', isa => ApiGatewayV2_RouteSettingsMap, predicate => 1);
  has StageName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has StageVariables => (is => 'ro', isa => ApiGatewayV2_StageVariablesMap, predicate => 1);
  has Tags => (is => 'ro', isa => ApiGatewayV2_Tags, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateStage');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v2/apis/{apiId}/stages');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGatewayV2::CreateStageResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ApiId' => 'apiId'
                  },
  'NameInRequest' => {
                       'StageVariables' => 'stageVariables',
                       'Description' => 'description',
                       'AccessLogSettings' => 'accessLogSettings',
                       'RouteSettings' => 'routeSettings',
                       'Tags' => 'tags',
                       'DeploymentId' => 'deploymentId',
                       'StageName' => 'stageName',
                       'ClientCertificateId' => 'clientCertificateId',
                       'DefaultRouteSettings' => 'defaultRouteSettings'
                     },
  'IsRequired' => {
                    'ApiId' => 1,
                    'StageName' => 1
                  },
  'types' => {
               'AccessLogSettings' => {
                                        'class' => 'Paws::ApiGatewayV2::AccessLogSettings',
                                        'type' => 'ApiGatewayV2_AccessLogSettings'
                                      },
               'Description' => {
                                  'type' => 'Str'
                                },
               'StageVariables' => {
                                     'class' => 'Paws::ApiGatewayV2::StageVariablesMap',
                                     'type' => 'ApiGatewayV2_StageVariablesMap'
                                   },
               'RouteSettings' => {
                                    'type' => 'ApiGatewayV2_RouteSettingsMap',
                                    'class' => 'Paws::ApiGatewayV2::RouteSettingsMap'
                                  },
               'ApiId' => {
                            'type' => 'Str'
                          },
               'DeploymentId' => {
                                   'type' => 'Str'
                                 },
               'Tags' => {
                           'type' => 'ApiGatewayV2_Tags',
                           'class' => 'Paws::ApiGatewayV2::Tags'
                         },
               'DefaultRouteSettings' => {
                                           'class' => 'Paws::ApiGatewayV2::RouteSettings',
                                           'type' => 'ApiGatewayV2_RouteSettings'
                                         },
               'ClientCertificateId' => {
                                          'type' => 'Str'
                                        },
               'StageName' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateStage - Arguments for method CreateStage on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStage on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method CreateStage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStage.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $CreateStageResponse = $apigateway->CreateStage(
      ApiId             => 'My__string',
      StageName         => 'MyStringWithLengthBetween1And128',
      AccessLogSettings => {
        DestinationArn => 'MyArn',                                # OPTIONAL
        Format         => 'MyStringWithLengthBetween1And1024',    # OPTIONAL
      },    # OPTIONAL
      ClientCertificateId  => 'MyId',    # OPTIONAL
      DefaultRouteSettings => {
        DataTraceEnabled       => 1,     # OPTIONAL
        DetailedMetricsEnabled => 1,     # OPTIONAL
        LoggingLevel         => 'ERROR', # values: ERROR, INFO, false; OPTIONAL
        ThrottlingBurstLimit => 1,       # OPTIONAL
        ThrottlingRateLimit  => 1,       # OPTIONAL
      },    # OPTIONAL
      DeploymentId  => 'MyId',                                 # OPTIONAL
      Description   => 'MyStringWithLengthBetween0And1024',    # OPTIONAL
      RouteSettings => {
        'My__string' => {
          DataTraceEnabled       => 1,                         # OPTIONAL
          DetailedMetricsEnabled => 1,                         # OPTIONAL
          LoggingLevel => 'ERROR',    # values: ERROR, INFO, false; OPTIONAL
          ThrottlingBurstLimit => 1,  # OPTIONAL
          ThrottlingRateLimit  => 1,  # OPTIONAL
        },
      },    # OPTIONAL
      StageVariables =>
        { 'My__string' => 'MyStringWithLengthBetween0And2048', },    # OPTIONAL
      Tags => { 'My__string' => 'MyStringWithLengthBetween1And1600', }
      ,                                                              # OPTIONAL
    );

    # Results:
    my $AccessLogSettings    = $CreateStageResponse->AccessLogSettings;
    my $ClientCertificateId  = $CreateStageResponse->ClientCertificateId;
    my $CreatedDate          = $CreateStageResponse->CreatedDate;
    my $DefaultRouteSettings = $CreateStageResponse->DefaultRouteSettings;
    my $DeploymentId         = $CreateStageResponse->DeploymentId;
    my $Description          = $CreateStageResponse->Description;
    my $LastUpdatedDate      = $CreateStageResponse->LastUpdatedDate;
    my $RouteSettings        = $CreateStageResponse->RouteSettings;
    my $StageName            = $CreateStageResponse->StageName;
    my $StageVariables       = $CreateStageResponse->StageVariables;
    my $Tags                 = $CreateStageResponse->Tags;

    # Returns a L<Paws::ApiGatewayV2::CreateStageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateStage>

=head1 ATTRIBUTES


=head2 AccessLogSettings => ApiGatewayV2_AccessLogSettings

Settings for logging access in this stage.



=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 ClientCertificateId => Str

The identifier of a client certificate for a Stage.



=head2 DefaultRouteSettings => ApiGatewayV2_RouteSettings

The default route settings for the stage.



=head2 DeploymentId => Str

The deployment identifier of the API stage.



=head2 Description => Str

The description for the API stage.



=head2 RouteSettings => ApiGatewayV2_RouteSettingsMap

Route settings for the stage.



=head2 B<REQUIRED> StageName => Str

The name of the stage.



=head2 StageVariables => ApiGatewayV2_StageVariablesMap

A map that defines the stage variables for a Stage. Variable names can
have alphanumeric and underscore characters, and the values must match
[A-Za-z0-9-._~:/?#&=,]+.



=head2 Tags => ApiGatewayV2_Tags

The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with aws:. The tag value can be up to 256 characters..




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStage in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

