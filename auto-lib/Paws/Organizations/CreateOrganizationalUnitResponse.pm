
package Paws::Organizations::CreateOrganizationalUnitResponse;
  use Moose;
  has OrganizationalUnit => (is => 'ro', isa => 'Paws::Organizations::OrganizationalUnit');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::CreateOrganizationalUnitResponse

=head1 ATTRIBUTES


=head2 OrganizationalUnit => L<Paws::Organizations::OrganizationalUnit>

A structure that contains details about the newly created OU.


=head2 _request_id => Str


=cut

1;