
package Paws::WorkMail::DeleteOrganizationResponse;
  use Moose;
  has OrganizationId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DeleteOrganizationResponse

=head1 ATTRIBUTES


=head2 OrganizationId => Str

The organization ID.


=head2 State => Str

The state of the organization.


=head2 _request_id => Str


=cut

1;