# Generated from default/object.tt
package Paws::AppSync::GraphqlApi;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::AppSync::Types qw/AppSync_MapOfStringToString AppSync_LogConfig AppSync_UserPoolConfig AppSync_TagMap AppSync_AdditionalAuthenticationProvider AppSync_OpenIDConnectConfig/;
  has AdditionalAuthenticationProviders => (is => 'ro', isa => ArrayRef[AppSync_AdditionalAuthenticationProvider]);
  has ApiId => (is => 'ro', isa => Str);
  has Arn => (is => 'ro', isa => Str);
  has AuthenticationType => (is => 'ro', isa => Str);
  has LogConfig => (is => 'ro', isa => AppSync_LogConfig);
  has Name => (is => 'ro', isa => Str);
  has OpenIDConnectConfig => (is => 'ro', isa => AppSync_OpenIDConnectConfig);
  has Tags => (is => 'ro', isa => AppSync_TagMap);
  has Uris => (is => 'ro', isa => AppSync_MapOfStringToString);
  has UserPoolConfig => (is => 'ro', isa => AppSync_UserPoolConfig);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AdditionalAuthenticationProviders' => {
                                                        'class' => 'Paws::AppSync::AdditionalAuthenticationProvider',
                                                        'type' => 'ArrayRef[AppSync_AdditionalAuthenticationProvider]'
                                                      },
               'ApiId' => {
                            'type' => 'Str'
                          },
               'UserPoolConfig' => {
                                     'class' => 'Paws::AppSync::UserPoolConfig',
                                     'type' => 'AppSync_UserPoolConfig'
                                   },
               'Uris' => {
                           'class' => 'Paws::AppSync::MapOfStringToString',
                           'type' => 'AppSync_MapOfStringToString'
                         },
               'Arn' => {
                          'type' => 'Str'
                        },
               'AuthenticationType' => {
                                         'type' => 'Str'
                                       },
               'OpenIDConnectConfig' => {
                                          'class' => 'Paws::AppSync::OpenIDConnectConfig',
                                          'type' => 'AppSync_OpenIDConnectConfig'
                                        },
               'Tags' => {
                           'class' => 'Paws::AppSync::TagMap',
                           'type' => 'AppSync_TagMap'
                         },
               'LogConfig' => {
                                'class' => 'Paws::AppSync::LogConfig',
                                'type' => 'AppSync_LogConfig'
                              },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'AdditionalAuthenticationProviders' => 'additionalAuthenticationProviders',
                       'ApiId' => 'apiId',
                       'UserPoolConfig' => 'userPoolConfig',
                       'Uris' => 'uris',
                       'Arn' => 'arn',
                       'AuthenticationType' => 'authenticationType',
                       'OpenIDConnectConfig' => 'openIDConnectConfig',
                       'Tags' => 'tags',
                       'LogConfig' => 'logConfig',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::GraphqlApi

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::GraphqlApi object:

  $service_obj->Method(Att1 => { AdditionalAuthenticationProviders => $value, ..., UserPoolConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::GraphqlApi object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalAuthenticationProviders

=head1 DESCRIPTION

Describes a GraphQL API.

=head1 ATTRIBUTES


=head2 AdditionalAuthenticationProviders => ArrayRef[AppSync_AdditionalAuthenticationProvider]

  A list of additional authentication providers for the C<GraphqlApi>
API.


=head2 ApiId => Str

  The API ID.


=head2 Arn => Str

  The ARN.


=head2 AuthenticationType => Str

  The authentication type.


=head2 LogConfig => AppSync_LogConfig

  The Amazon CloudWatch Logs configuration.


=head2 Name => Str

  The API name.


=head2 OpenIDConnectConfig => AppSync_OpenIDConnectConfig

  The OpenID Connect configuration.


=head2 Tags => AppSync_TagMap

  The tags.


=head2 Uris => AppSync_MapOfStringToString

  The URIs.


=head2 UserPoolConfig => AppSync_UserPoolConfig

  The Amazon Cognito user pool configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

