
package Paws::WorkMail::CreateOrganizationResponse;
  use Moose;
  has OrganizationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::CreateOrganizationResponse

=head1 ATTRIBUTES


=head2 OrganizationId => Str

The organization ID.


=head2 _request_id => Str


=cut

1;