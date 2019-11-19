
package Paws::AppSync::UpdateGraphqlApi;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppSync::Types qw/AppSync_UserPoolConfig AppSync_LogConfig AppSync_AdditionalAuthenticationProvider AppSync_OpenIDConnectConfig/;
  has AdditionalAuthenticationProviders => (is => 'ro', isa => ArrayRef[AppSync_AdditionalAuthenticationProvider], predicate => 1);
  has ApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has AuthenticationType => (is => 'ro', isa => Str, predicate => 1);
  has LogConfig => (is => 'ro', isa => AppSync_LogConfig, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has OpenIDConnectConfig => (is => 'ro', isa => AppSync_OpenIDConnectConfig, predicate => 1);
  has UserPoolConfig => (is => 'ro', isa => AppSync_UserPoolConfig, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateGraphqlApi');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/apis/{apiId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AppSync::UpdateGraphqlApiResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Name' => 1,
                    'ApiId' => 1
                  },
  'NameInRequest' => {
                       'OpenIDConnectConfig' => 'openIDConnectConfig',
                       'LogConfig' => 'logConfig',
                       'UserPoolConfig' => 'userPoolConfig',
                       'AuthenticationType' => 'authenticationType',
                       'Name' => 'name',
                       'AdditionalAuthenticationProviders' => 'additionalAuthenticationProviders'
                     },
  'types' => {
               'UserPoolConfig' => {
                                     'class' => 'Paws::AppSync::UserPoolConfig',
                                     'type' => 'AppSync_UserPoolConfig'
                                   },
               'OpenIDConnectConfig' => {
                                          'class' => 'Paws::AppSync::OpenIDConnectConfig',
                                          'type' => 'AppSync_OpenIDConnectConfig'
                                        },
               'LogConfig' => {
                                'class' => 'Paws::AppSync::LogConfig',
                                'type' => 'AppSync_LogConfig'
                              },
               'ApiId' => {
                            'type' => 'Str'
                          },
               'AuthenticationType' => {
                                         'type' => 'Str'
                                       },
               'Name' => {
                           'type' => 'Str'
                         },
               'AdditionalAuthenticationProviders' => {
                                                        'class' => 'Paws::AppSync::AdditionalAuthenticationProvider',
                                                        'type' => 'ArrayRef[AppSync_AdditionalAuthenticationProvider]'
                                                      }
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

Paws::AppSync::UpdateGraphqlApi - Arguments for method UpdateGraphqlApi on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGraphqlApi on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method UpdateGraphqlApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGraphqlApi.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $UpdateGraphqlApiResponse = $appsync->UpdateGraphqlApi(
      ApiId                             => 'MyString',
      Name                              => 'MyString',
      AdditionalAuthenticationProviders => [
        {
          AuthenticationType => 'API_KEY'
          , # values: API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT; OPTIONAL
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
      AuthenticationType => 'API_KEY',    # OPTIONAL
      LogConfig          => {
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
      UserPoolConfig => {
        AwsRegion        => 'MyString',
        DefaultAction    => 'ALLOW',      # values: ALLOW, DENY
        UserPoolId       => 'MyString',
        AppIdClientRegex => 'MyString',
      },    # OPTIONAL
    );

    # Results:
    my $GraphqlApi = $UpdateGraphqlApiResponse->GraphqlApi;

    # Returns a L<Paws::AppSync::UpdateGraphqlApiResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/UpdateGraphqlApi>

=head1 ATTRIBUTES


=head2 AdditionalAuthenticationProviders => ArrayRef[AppSync_AdditionalAuthenticationProvider]

A list of additional authentication providers for the C<GraphqlApi>
API.



=head2 B<REQUIRED> ApiId => Str

The API ID.



=head2 AuthenticationType => Str

The new authentication type for the C<GraphqlApi> object.

Valid values are: C<"API_KEY">, C<"AWS_IAM">, C<"AMAZON_COGNITO_USER_POOLS">, C<"OPENID_CONNECT">

=head2 LogConfig => AppSync_LogConfig

The Amazon CloudWatch Logs configuration for the C<GraphqlApi> object.



=head2 B<REQUIRED> Name => Str

The new name for the C<GraphqlApi> object.



=head2 OpenIDConnectConfig => AppSync_OpenIDConnectConfig

The OpenID Connect configuration for the C<GraphqlApi> object.



=head2 UserPoolConfig => AppSync_UserPoolConfig

The new Amazon Cognito user pool configuration for the C<GraphqlApi>
object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGraphqlApi in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

