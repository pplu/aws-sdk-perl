
package Paws::IoT::ListRoleAliasesResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextMarker');
  has RoleAliases => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'roleAliases');

  has _request_id => (is => 'ro', isa => 'Str');
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

