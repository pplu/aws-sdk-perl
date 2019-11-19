# Generated from json/callresult_class.tt

package Paws::CognitoIdentity::GetIdentityPoolRolesResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdentity::Types qw/CognitoIdentity_RoleMappingMap CognitoIdentity_RolesMap/;
  has IdentityPoolId => (is => 'ro', isa => Str);
  has RoleMappings => (is => 'ro', isa => CognitoIdentity_RoleMappingMap);
  has Roles => (is => 'ro', isa => CognitoIdentity_RolesMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoleMappings' => {
                                   'class' => 'Paws::CognitoIdentity::RoleMappingMap',
                                   'type' => 'CognitoIdentity_RoleMappingMap'
                                 },
               'IdentityPoolId' => {
                                     'type' => 'Str'
                                   },
               'Roles' => {
                            'class' => 'Paws::CognitoIdentity::RolesMap',
                            'type' => 'CognitoIdentity_RolesMap'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::GetIdentityPoolRolesResponse

=head1 ATTRIBUTES


=head2 IdentityPoolId => Str

An identity pool ID in the format REGION:GUID.


=head2 RoleMappings => CognitoIdentity_RoleMappingMap

How users for a specific identity provider are to mapped to roles. This
is a String-to-RoleMapping object map. The string identifies the
identity provider, for example, "graph.facebook.com" or
"cognito-idp.us-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id".


=head2 Roles => CognitoIdentity_RolesMap

The map of roles associated with this pool. Currently only
authenticated and unauthenticated roles are supported.


=head2 _request_id => Str


=cut

1;