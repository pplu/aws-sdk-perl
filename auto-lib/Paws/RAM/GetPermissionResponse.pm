
package Paws::RAM::GetPermissionResponse;
  use Moose;
  has Permission => (is => 'ro', isa => 'Paws::RAM::ResourceSharePermissionDetail', traits => ['NameInRequest'], request_name => 'permission');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::GetPermissionResponse

=head1 ATTRIBUTES


=head2 Permission => L<Paws::RAM::ResourceSharePermissionDetail>

Information about the permission.


=head2 _request_id => Str


=cut

