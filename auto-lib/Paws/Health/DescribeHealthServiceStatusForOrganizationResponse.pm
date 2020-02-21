
package Paws::Health::DescribeHealthServiceStatusForOrganizationResponse;
  use Moose;
  has HealthServiceAccessStatusForOrganization => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'healthServiceAccessStatusForOrganization' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeHealthServiceStatusForOrganizationResponse

=head1 ATTRIBUTES


=head2 HealthServiceAccessStatusForOrganization => Str

Information about the status of enabling or disabling AWS Health
Organizational View in your organization.

Valid values are C<ENABLED | DISABLED | PENDING>.


=head2 _request_id => Str


=cut

1;