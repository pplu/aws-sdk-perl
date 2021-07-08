
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

The C<AvailablePolicyTypes> part of the response is deprecated, and you
shouldn't use it in your apps. It doesn't include any policy type
supported by Organizations other than SCPs. To determine which policy
types are enabled in your organization, use the C< ListRoots >
operation.


=head2 _request_id => Str


=cut

1;