# Generated from default/object.tt
package Paws::AppSync::AdditionalAuthenticationProvider;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw/AppSync_CognitoUserPoolConfig AppSync_OpenIDConnectConfig/;
  has AuthenticationType => (is => 'ro', isa => Str);
  has OpenIDConnectConfig => (is => 'ro', isa => AppSync_OpenIDConnectConfig);
  has UserPoolConfig => (is => 'ro', isa => AppSync_CognitoUserPoolConfig);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AuthenticationType' => {
                                         'type' => 'Str'
                                       },
               'UserPoolConfig' => {
                                     'class' => 'Paws::AppSync::CognitoUserPoolConfig',
                                     'type' => 'AppSync_CognitoUserPoolConfig'
                                   },
               'OpenIDConnectConfig' => {
                                          'class' => 'Paws::AppSync::OpenIDConnectConfig',
                                          'type' => 'AppSync_OpenIDConnectConfig'
                                        }
             },
  'NameInRequest' => {
                       'AuthenticationType' => 'authenticationType',
                       'UserPoolConfig' => 'userPoolConfig',
                       'OpenIDConnectConfig' => 'openIDConnectConfig'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::AdditionalAuthenticationProvider

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::AdditionalAuthenticationProvider object:

  $service_obj->Method(Att1 => { AuthenticationType => $value, ..., UserPoolConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::AdditionalAuthenticationProvider object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthenticationType

=head1 DESCRIPTION

Describes an additional authentication provider.

=head1 ATTRIBUTES


=head2 AuthenticationType => Str

  The authentication type: API key, AWS IAM, OIDC, or Amazon Cognito user
pools.


=head2 OpenIDConnectConfig => AppSync_OpenIDConnectConfig

  The OpenID Connect configuration.


=head2 UserPoolConfig => AppSync_CognitoUserPoolConfig

  The Amazon Cognito user pool configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

