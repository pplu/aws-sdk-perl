
package Paws::IoT::DescribeRoleAliasResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_RoleAliasDescription/;
  has RoleAliasDescription => (is => 'ro', isa => IoT_RoleAliasDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoleAliasDescription' => {
                                           'class' => 'Paws::IoT::RoleAliasDescription',
                                           'type' => 'IoT_RoleAliasDescription'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'RoleAliasDescription' => 'roleAliasDescription'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeRoleAliasResponse

=head1 ATTRIBUTES


=head2 RoleAliasDescription => IoT_RoleAliasDescription

The role alias description.


=head2 _request_id => Str


=cut

