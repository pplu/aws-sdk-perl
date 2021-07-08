
package Paws::Appflow::UpdateConnectorProfile;
  use Moose;
  has ConnectionMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionMode', required => 1);
  has ConnectorProfileConfig => (is => 'ro', isa => 'Paws::Appflow::ConnectorProfileConfig', traits => ['NameInRequest'], request_name => 'connectorProfileConfig', required => 1);
  has ConnectorProfileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorProfileName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConnectorProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-connector-profile');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::UpdateConnectorProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::UpdateConnectorProfile - Arguments for method UpdateConnectorProfile on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConnectorProfile on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method UpdateConnectorProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConnectorProfile.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $UpdateConnectorProfileResponse = $appflow->UpdateConnectorProfile(
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
            AccessToken          => 'MyAccessToken',    # max: 512; OPTIONAL
            ClientCredentialsArn =>
              'MyClientCredentialsArn',    # min: 20, max: 2048; OPTIONAL
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
            BucketName             => 'MyBucketName',      # min: 3, max: 63
            Stage                  => 'MyStage',           # max: 512
            Warehouse              => 'MyWarehouse',       # max: 512
            AccountName            => 'MyAccountName',     # max: 512; OPTIONAL
            BucketPrefix           => 'MyBucketPrefix',    # max: 512; OPTIONAL
            PrivateLinkServiceName =>
              'MyPrivateLinkServiceName',                  # max: 512; OPTIONAL
            Region => 'MyRegion',                          # max: 64; OPTIONAL
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

    );

    # Results:
    my $ConnectorProfileArn =
      $UpdateConnectorProfileResponse->ConnectorProfileArn;

    # Returns a L<Paws::Appflow::UpdateConnectorProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/UpdateConnectorProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionMode => Str

Indicates the connection mode and if it is public or private.

Valid values are: C<"Public">, C<"Private">

=head2 B<REQUIRED> ConnectorProfileConfig => L<Paws::Appflow::ConnectorProfileConfig>

Defines the connector-specific profile configuration and credentials.



=head2 B<REQUIRED> ConnectorProfileName => Str

The name of the connector profile and is unique for each
C<ConnectorProfile> in the AWS Account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConnectorProfile in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

