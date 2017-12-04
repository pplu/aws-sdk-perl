
package Paws::IoT::UpdateRoleAliasResponse;
  use Moose;
  has RoleAlias => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleAlias');
  has RoleAliasArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleAliasArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateRoleAliasResponse

=head1 ATTRIBUTES


=head2 RoleAlias => Str

The role alias.


=head2 RoleAliasArn => Str

The role alias ARN.


=head2 _request_id => Str


=cut

