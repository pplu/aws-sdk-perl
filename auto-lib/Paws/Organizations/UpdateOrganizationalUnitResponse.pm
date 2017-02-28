
package Paws::Organizations::UpdateOrganizationalUnitResponse;
  use Moose;
  has OrganizationalUnit => (is => 'ro', isa => 'Paws::Organizations::OrganizationalUnit');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::UpdateOrganizationalUnitResponse

=head1 ATTRIBUTES


=head2 OrganizationalUnit => L<Paws::Organizations::OrganizationalUnit>

A structure that contains the details about the specified OU, including
its new name.


=head2 _request_id => Str


=cut

1;