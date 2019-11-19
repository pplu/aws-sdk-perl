
package Paws::ApiGatewayV2::UpdateStage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_StageVariablesMap ApiGatewayV2_RouteSettingsMap ApiGatewayV2_AccessLogSettings ApiGatewayV2_RouteSettings/;
  has AccessLogSettings => (is => 'ro', isa => ApiGatewayV2_AccessLogSettings, predicate => 1);
  has ApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ClientCertificateId => (is => 'ro', isa => Str, predicate => 1);
  has DefaultRouteSettings => (is => 'ro', isa => ApiGatewayV2_RouteSettings, predicate => 1);
  has DeploymentId => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has RouteSettings => (is => 'ro', isa => ApiGatewayV2_RouteSettingsMap, predicate => 1);
  has StageName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has StageVariables => (is => 'ro', isa => ApiGatewayV2_StageVariablesMap, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateStage');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v2/apis/{apiId}/stages/{stageName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGatewayV2::UpdateStageResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeploymentId' => {
                                   'type' => 'Str'
                                 },
               'ApiId' => {
                            'type' => 'Str'
                          },
               'StageName' => {
                                'type' => 'Str'
                              },
               'ClientCertificateId' => {
                                          'type' => 'Str'
                                        },
               'DefaultRouteSettings' => {
                                           'class' => 'Paws::ApiGatewayV2::RouteSettings',
                                           'type' => 'ApiGatewayV2_RouteSettings'
                                         },
               'StageVariables' => {
                                     'type' => 'ApiGatewayV2_StageVariablesMap',
                                     'class' => 'Paws::ApiGatewayV2::StageVariablesMap'
                                   },
               'Description' => {
                                  'type' => 'Str'
                                },
               'AccessLogSettings' => {
                                        'type' => 'ApiGatewayV2_AccessLogSettings',
                                        'class' => 'Paws::ApiGatewayV2::AccessLogSettings'
                                      },
               'RouteSettings' => {
                                    'class' => 'Paws::ApiGatewayV2::RouteSettingsMap',
                                    'type' => 'ApiGatewayV2_RouteSettingsMap'
                                  }
             },
  'NameInRequest' => {
                       'DefaultRouteSettings' => 'defaultRouteSettings',
                       'ClientCertificateId' => 'clientCertificateId',
                       'DeploymentId' => 'deploymentId',
                       'RouteSettings' => 'routeSettings',
                       'Description' => 'description',
                       'StageVariables' => 'stageVariables',
                       'AccessLogSettings' => 'accessLogSettings'
                     },
  'IsRequired' => {
                    'StageName' => 1,
                    'ApiId' => 1
                  },
  'ParamInURI' => {
                    'StageName' => 'stageName',
                    'ApiId' => 'apiId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateStage - Arguments for method UpdateStage on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStage on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method UpdateStage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStage.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $UpdateStageResponse = $apigateway->UpdateStage(
      ApiId             => 'My__string',
      StageName         => 'My__string',
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
    );

    # Results:
    my $AccessLogSettings    = $UpdateStageResponse->AccessLogSettings;
    my $ClientCertificateId  = $UpdateStageResponse->ClientCertificateId;
    my $CreatedDate          = $UpdateStageResponse->CreatedDate;
    my $DefaultRouteSettings = $UpdateStageResponse->DefaultRouteSettings;
    my $DeploymentId         = $UpdateStageResponse->DeploymentId;
    my $Description          = $UpdateStageResponse->Description;
    my $LastUpdatedDate      = $UpdateStageResponse->LastUpdatedDate;
    my $RouteSettings        = $UpdateStageResponse->RouteSettings;
    my $StageName            = $UpdateStageResponse->StageName;
    my $StageVariables       = $UpdateStageResponse->StageVariables;
    my $Tags                 = $UpdateStageResponse->Tags;

    # Returns a L<Paws::ApiGatewayV2::UpdateStageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateStage>

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

The deployment identifier for the API stage.



=head2 Description => Str

The description for the API stage.



=head2 RouteSettings => ApiGatewayV2_RouteSettingsMap

Route settings for the stage.



=head2 B<REQUIRED> StageName => Str

The stage name.



=head2 StageVariables => ApiGatewayV2_StageVariablesMap

A map that defines the stage variables for a Stage. Variable names can
have alphanumeric and underscore characters, and the values must match
[A-Za-z0-9-._~:/?#&=,]+.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStage in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

