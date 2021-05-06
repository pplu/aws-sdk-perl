
package Paws::Organizations::DescribeOrganizationalUnitResponse;
  use Moose;
  has OrganizationalUnit => (is => 'ro', isa => 'Paws::Organizations::OrganizationalUnit');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DescribeOrganizationalUnitResponse

=head1 ATTRIBUTES


=head2 OrganizationalUnit => L<Paws::Organizations::OrganizationalUnit>

A structure that contains details about the specified OU.


=head2 _request_id => Str


=cut

1;