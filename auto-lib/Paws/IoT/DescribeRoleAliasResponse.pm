
package Paws::IoT::DescribeRoleAliasResponse;
  use Moose;
  has RoleAliasDescription => (is => 'ro', isa => 'Paws::IoT::RoleAliasDescription', traits => ['NameInRequest'], request_name => 'roleAliasDescription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeRoleAliasResponse

=head1 ATTRIBUTES


=head2 RoleAliasDescription => L<Paws::IoT::RoleAliasDescription>

The role alias description.


=head2 _request_id => Str


=cut

