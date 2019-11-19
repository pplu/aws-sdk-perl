
package Paws::IoT::ListRoleAliasesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::IoT::Types qw//;
  has NextMarker => (is => 'ro', isa => Str);
  has RoleAliases => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'RoleAliases' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'RoleAliases' => 'roleAliases',
                       'NextMarker' => 'nextMarker'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListRoleAliasesResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

A marker used to get the next set of results.


=head2 RoleAliases => ArrayRef[Str|Undef]

The role aliases.


=head2 _request_id => Str


=cut

