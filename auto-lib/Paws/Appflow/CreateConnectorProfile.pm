
package Paws::Appflow::CreateConnectorProfile;
  use Moose;
  has ConnectionMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionMode', required => 1);
  has ConnectorProfileConfig => (is => 'ro', isa => 'Paws::Appflow::ConnectorProfileConfig', traits => ['NameInRequest'], request_name => 'connectorProfileConfig', required => 1);
  has ConnectorProfileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorProfileName', required => 1);
  has ConnectorType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorType', required => 1);
  has KmsArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnectorProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/create-connector-profile');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::CreateConnectorProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::CreateConnectorProfile - Arguments for method CreateConnectorProfile on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnectorProfile on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method CreateConnectorProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnectorProfile.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $CreateConnectorProfileResponse = $appflow->CreateConnectorProfile(
      ConnectionMode         => 'Public',
      ConnectorProfileConfig => {
        ConnectorProfileCredentials => {
          Amplitude => {
            ApiKey    => 'MyApiKey',       # max: 256
            SecretKey => 'MySecretKey',    # max: 256

          },    # OPTIONAL
          Datadog => {
            ApiKey         => 'MyApiKey',            # max: 256
            ApplicationKey => 'MyApplicationKey',    # max: 512

          },    # OPTIONAL
          Dynatrace => {
            ApiToken => 'MyApiToken',    # max: 256

          },    # OPTIONAL
          GoogleAnalytics => {
            ClientId     => 'MyClientId',        # max: 512
            ClientSecret => 'MyClientSecret',    # max: 512
            AccessToken  => 'MyAccessToken',     # max: 512; OPTIONAL
            OAuthRequest => {
              AuthCode    => 'MyAuthCode',       # max: 512; OPTIONAL
              RedirectUri => 'MyRedirectUri',    # max: 512; OPTIONAL
            },    # OPTIONAL
            RefreshToken => 'MyRefreshToken',    # max: 512; OPTIONAL
          },    # OPTIONAL
          Honeycode => {
            AccessToken  => 'MyAccessToken',    # max: 512; OPTIONAL
            OAuthRequest => {
              AuthCode    => 'MyAuthCode',       # max: 512; OPTIONAL
              RedirectUri => 'MyRedirectUri',    # max: 512; OPTIONAL
            },    # OPTIONAL
            RefreshToken => 'MyRefreshToken',    # max: 512; OPTIONAL
          },    # OPTIONAL
          InforNexus => {
            AccessKeyId     => 'MyAccessKeyId',    # max: 256
            Datakey         => 'MyKey',            # max: 512
            SecretAccessKey => 'MyKey',            # max: 512
            UserId          => 'MyUsername',       # max: 512

          },    # OPTIONAL
          Marketo => {
            ClientId     => 'MyClientId',        # max: 512
            ClientSecret => 'MyClientSecret',    # max: 512
            AccessToken  => 'MyAccessToken',     # max: 512; OPTIONAL
            OAuthRequest => {
              AuthCode    => 'MyAuthCode',       # max: 512; OPTIONAL
              RedirectUri => 'MyRedirectUri',    # max: 512; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Redshift => {
            Password => 'MyPassword',    # max: 512
            Username => 'MyUsername',    # max: 512

          },    # OPTIONAL
          Salesforce => {
            AccessToken => 'MyAccessToken',    # max: 512; OPTIONAL
            ClientCredentialsArn =>
              'MyClientCredentialsArn',        # min: 20, max: 2048; OPTIONAL
            OAuthRequest => {
              AuthCode    => 'MyAuthCode',       # max: 512; OPTIONAL
              RedirectUri => 'MyRedirectUri',    # max: 512; OPTIONAL
            },    # OPTIONAL
            RefreshToken => 'MyRefreshToken',    # max: 512; OPTIONAL
          },    # OPTIONAL
          ServiceNow => {
            Password => 'MyPassword',    # max: 512
            Username => 'MyUsername',    # max: 512

          },    # OPTIONAL
          Singular => {
            ApiKey => 'MyApiKey',    # max: 256

          },    # OPTIONAL
          Slack => {
            ClientId     => 'MyClientId',        # max: 512
            ClientSecret => 'MyClientSecret',    # max: 512
            AccessToken  => 'MyAccessToken',     # max: 512; OPTIONAL
            OAuthRequest => {
              AuthCode    => 'MyAuthCode',       # max: 512; OPTIONAL
              RedirectUri => 'MyRedirectUri',    # max: 512; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Snowflake => {
            Password => 'MyPassword',    # max: 512
            Username => 'MyUsername',    # max: 512

          },    # OPTIONAL
          Trendmicro => {
            ApiSecretKey => 'MyApiSecretKey',    # max: 256

          },    # OPTIONAL
          Veeva => {
            Password => 'MyPassword',    # max: 512
            Username => 'MyUsername',    # max: 512

          },    # OPTIONAL
          Zendesk => {
            ClientId     => 'MyClientId',        # max: 512
            ClientSecret => 'MyClientSecret',    # max: 512
            AccessToken  => 'MyAccessToken',     # max: 512; OPTIONAL
            OAuthRequest => {
              AuthCode    => 'MyAuthCode',       # max: 512; OPTIONAL
              RedirectUri => 'MyRedirectUri',    # max: 512; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },
        ConnectorProfileProperties => {
          Amplitude => {

          },    # OPTIONAL
          Datadog => {
            InstanceUrl => 'MyInstanceUrl',    # max: 256

          },    # OPTIONAL
          Dynatrace => {
            InstanceUrl => 'MyInstanceUrl',    # max: 256

          },    # OPTIONAL
          GoogleAnalytics => {

          },    # OPTIONAL
          Honeycode => {

          },    # OPTIONAL
          InforNexus => {
            InstanceUrl => 'MyInstanceUrl',    # max: 256

          },    # OPTIONAL
          Marketo => {
            InstanceUrl => 'MyInstanceUrl',    # max: 256

          },    # OPTIONAL
          Redshift => {
            BucketName   => 'MyBucketName',      # min: 3, max: 63
            DatabaseUrl  => 'MyDatabaseUrl',     # max: 512
            RoleArn      => 'MyRoleArn',         # max: 512
            BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
          },    # OPTIONAL
          Salesforce => {
            InstanceUrl          => 'MyInstanceUrl',    # max: 256
            IsSandboxEnvironment => 1,                  # OPTIONAL
          },    # OPTIONAL
          ServiceNow => {
            InstanceUrl => 'MyInstanceUrl',    # max: 256

          },    # OPTIONAL
          Singular => {

          },    # OPTIONAL
          Slack => {
            InstanceUrl => 'MyInstanceUrl',    # max: 256

          },    # OPTIONAL
          Snowflake => {
            BucketName   => 'MyBucketName',      # min: 3, max: 63
            Stage        => 'MyStage',           # max: 512
            Warehouse    => 'MyWarehouse',       # max: 512
            AccountName  => 'MyAccountName',     # max: 512; OPTIONAL
            BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
            PrivateLinkServiceName =>
              'MyPrivateLinkServiceName',        # max: 512; OPTIONAL
            Region => 'MyRegion',                # max: 64; OPTIONAL
          },    # OPTIONAL
          Trendmicro => {

          },    # OPTIONAL
          Veeva => {
            InstanceUrl => 'MyInstanceUrl',    # max: 256

          },    # OPTIONAL
          Zendesk => {
            InstanceUrl => 'MyInstanceUrl',    # max: 256

          },    # OPTIONAL
        },

      },
      ConnectorProfileName => 'MyConnectorProfileName',
      ConnectorType        => 'Salesforce',
      KmsArn               => 'MyKMSArn',                 # OPTIONAL
    );

    # Results:
    my $ConnectorProfileArn =
      $CreateConnectorProfileResponse->ConnectorProfileArn;

    # Returns a L<Paws::Appflow::CreateConnectorProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/CreateConnectorProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionMode => Str

Indicates the connection mode and specifies whether it is public or
private. Private flows use AWS PrivateLink to route data over AWS
infrastructure without exposing it to the public internet.

Valid values are: C<"Public">, C<"Private">

=head2 B<REQUIRED> ConnectorProfileConfig => L<Paws::Appflow::ConnectorProfileConfig>

Defines the connector-specific configuration and credentials.



=head2 B<REQUIRED> ConnectorProfileName => Str

The name of the connector profile. The name is unique for each
C<ConnectorProfile> in your AWS account.



=head2 B<REQUIRED> ConnectorType => Str

The type of connector, such as Salesforce, Amplitude, and so on.

Valid values are: C<"Salesforce">, C<"Singular">, C<"Slack">, C<"Redshift">, C<"S3">, C<"Marketo">, C<"Googleanalytics">, C<"Zendesk">, C<"Servicenow">, C<"Datadog">, C<"Trendmicro">, C<"Snowflake">, C<"Dynatrace">, C<"Infornexus">, C<"Amplitude">, C<"Veeva">, C<"EventBridge">, C<"LookoutMetrics">, C<"Upsolver">, C<"Honeycode">, C<"CustomerProfiles">

=head2 KmsArn => Str

The ARN (Amazon Resource Name) of the Key Management Service (KMS) key
you provide for encryption. This is required if you do not want to use
the Amazon AppFlow-managed KMS key. If you don't provide anything here,
Amazon AppFlow uses the Amazon AppFlow-managed KMS key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnectorProfile in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

