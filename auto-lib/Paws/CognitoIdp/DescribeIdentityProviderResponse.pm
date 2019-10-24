# Generated from json/callresult_class.tt

package Paws::CognitoIdp::DescribeIdentityProviderResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_IdentityProviderType/;
  has IdentityProvider => (is => 'ro', isa => CognitoIdp_IdentityProviderType, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IdentityProvider' => {
                                       'class' => 'Paws::CognitoIdp::IdentityProviderType',
                                       'type' => 'CognitoIdp_IdentityProviderType'
                                     }
             },
  'IsRequired' => {
                    'IdentityProvider' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::DescribeIdentityProviderResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityProvider => CognitoIdp_IdentityProviderType

The identity provider that was deleted.


=head2 _request_id => Str


=cut

1;