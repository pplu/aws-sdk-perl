
package Paws::AppSync::CreateGraphqlApi;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppSync::Types qw/AppSync_AdditionalAuthenticationProvider AppSync_TagMap AppSync_UserPoolConfig AppSync_LogConfig AppSync_OpenIDConnectConfig/;
  has AdditionalAuthenticationProviders => (is => 'ro', isa => ArrayRef[AppSync_AdditionalAuthenticationProvider], predicate => 1);
  has AuthenticationType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has LogConfig => (is => 'ro', isa => AppSync_LogConfig, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has OpenIDConnectConfig => (is => 'ro', isa => AppSync_OpenIDConnectConfig, predicate => 1);
  has Tags => (is => 'ro', isa => AppSync_TagMap, predicate => 1);
  has UserPoolConfig => (is => 'ro', isa => AppSync_UserPoolConfig, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateGraphqlApi');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/apis');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AppSync::CreateGraphqlApiResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'AuthenticationType' => 1,
                    'Name' => 1
                  },
  'NameInRequest' => {
                       'UserPoolConfig' => 'userPoolConfig',
                       'OpenIDConnectConfig' => 'openIDConnectConfig',
                       'LogConfig' => 'logConfig',
                       'Tags' => 'tags',
                       'AuthenticationType' => 'authenticationType',
                       'Name' => 'name',
                       'AdditionalAuthenticationProviders' => 'additionalAuthenticationProviders'
                     },
  'types' => {
               'AdditionalAuthenticationProviders' => {
                                                        'type' => 'ArrayRef[AppSync_AdditionalAuthenticationProvider]',
                                                        'class' => 'Paws::AppSync::AdditionalAuthenticationProvider'
                                                      },
               'Name' => {
                           'type' => 'Str'
                         },
               'AuthenticationType' => {
                                         'type' => 'Str'
                                       },
               'Tags' => {
                           'class' => 'Paws::AppSync::TagMap',
                           'type' => 'AppSync_TagMap'
                         },
               'OpenIDConnectConfig' => {
                                          'type' => 'AppSync_OpenIDConnectConfig',
                                          'class' => 'Paws::AppSync::OpenIDConnectConfig'
                                        },
               'LogConfig' => {
                                'type' => 'AppSync_LogConfig',
                                'class' => 'Paws::AppSync::LogConfig'
                              },
               'UserPoolConfig' => {
                                     'class' => 'Paws::AppSync::UserPoolConfig',
                                     'type' => 'AppSync_UserPoolConfig'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateGraphqlApi - Arguments for method CreateGraphqlApi on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGraphqlApi on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method CreateGraphqlApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGraphqlApi.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $CreateGraphqlApiResponse = $appsync->CreateGraphqlApi(
      AuthenticationType                => 'API_KEY',
      Name                              => 'MyString',
      AdditionalAuthenticationProviders => [
        {
          AuthenticationType => 'API_KEY'
          , # values: API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT
          OpenIDConnectConfig => {
            Issuer   => 'MyString',
            AuthTTL  => 1,            # OPTIONAL
            ClientId => 'MyString',
            IatTTL   => 1,            # OPTIONAL
          },    # OPTIONAL
          UserPoolConfig => {
            AwsRegion        => 'MyString',
            UserPoolId       => 'MyString',
            AppIdClientRegex => 'MyString',
          },    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      LogConfig => {
        CloudWatchLogsRoleArn => 'MyString',
        FieldLogLevel         => 'NONE',       # values: NONE, ERROR, ALL
        ExcludeVerboseContent => 1,            # OPTIONAL
      },    # OPTIONAL
      OpenIDConnectConfig => {
        Issuer   => 'MyString',
        AuthTTL  => 1,            # OPTIONAL
        ClientId => 'MyString',
        IatTTL   => 1,            # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      UserPoolConfig => {
        AwsRegion        => 'MyString',
        DefaultAction    => 'ALLOW',      # values: ALLOW, DENY
        UserPoolId       => 'MyString',
        AppIdClientRegex => 'MyString',
      },    # OPTIONAL
    );

    # Results:
    my $GraphqlApi = $CreateGraphqlApiResponse->GraphqlApi;

    # Returns a L<Paws::AppSync::CreateGraphqlApiResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/CreateGraphqlApi>

=head1 ATTRIBUTES


=head2 AdditionalAuthenticationProviders => ArrayRef[AppSync_AdditionalAuthenticationProvider]

A list of additional authentication providers for the C<GraphqlApi>
API.



=head2 B<REQUIRED> AuthenticationType => Str

The authentication type: API key, AWS IAM, OIDC, or Amazon Cognito user
pools.

Valid values are: C<"API_KEY">, C<"AWS_IAM">, C<"AMAZON_COGNITO_USER_POOLS">, C<"OPENID_CONNECT">

=head2 LogConfig => AppSync_LogConfig

The Amazon CloudWatch Logs configuration.



=head2 B<REQUIRED> Name => Str

A user-supplied name for the C<GraphqlApi>.



=head2 OpenIDConnectConfig => AppSync_OpenIDConnectConfig

The OpenID Connect configuration.



=head2 Tags => AppSync_TagMap

A C<TagMap> object.



=head2 UserPoolConfig => AppSync_UserPoolConfig

The Amazon Cognito user pool configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGraphqlApi in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

