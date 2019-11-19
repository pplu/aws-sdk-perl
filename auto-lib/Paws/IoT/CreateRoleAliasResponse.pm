
package Paws::IoT::CreateRoleAliasResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has RoleAlias => (is => 'ro', isa => Str);
  has RoleAliasArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'RoleAliasArn' => 'roleAliasArn',
                       'RoleAlias' => 'roleAlias'
                     },
  'types' => {
               'RoleAliasArn' => {
                                   'type' => 'Str'
                                 },
               'RoleAlias' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateRoleAliasResponse

=head1 ATTRIBUTES


=head2 RoleAlias => Str

The role alias.


=head2 RoleAliasArn => Str

The role alias ARN.


=head2 _request_id => Str


=cut

