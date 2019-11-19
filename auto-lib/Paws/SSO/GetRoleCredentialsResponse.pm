
package Paws::SSO::GetRoleCredentialsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSO::Types qw/SSO_RoleCredentials/;
  has RoleCredentials => (is => 'ro', isa => SSO_RoleCredentials);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoleCredentials' => {
                                      'type' => 'SSO_RoleCredentials',
                                      'class' => 'Paws::SSO::RoleCredentials'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'RoleCredentials' => 'roleCredentials'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSO::GetRoleCredentialsResponse

=head1 ATTRIBUTES


=head2 RoleCredentials => SSO_RoleCredentials

The credentials for the role that is assigned to the user.


=head2 _request_id => Str


=cut

