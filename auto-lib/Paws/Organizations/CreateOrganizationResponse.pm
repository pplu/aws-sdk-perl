
package Paws::Organizations::CreateOrganizationResponse;
  use Moose;
  has Organization => (is => 'ro', isa => 'Paws::Organizations::Organization');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::CreateOrganizationResponse

=head1 ATTRIBUTES


=head2 Organization => L<Paws::Organizations::Organization>

A structure that contains details about the newly created organization.


=head2 _request_id => Str


=cut

1;