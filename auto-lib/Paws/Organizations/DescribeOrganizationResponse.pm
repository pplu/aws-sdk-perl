
package Paws::Organizations::DescribeOrganizationResponse;
  use Moose;
  has Organization => (is => 'ro', isa => 'Paws::Organizations::Organization');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DescribeOrganizationResponse

=head1 ATTRIBUTES


=head2 Organization => L<Paws::Organizations::Organization>

A structure that contains information about the organization.


=head2 _request_id => Str


=cut

1;