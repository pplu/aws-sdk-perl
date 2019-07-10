
package Paws::Config::DescribeOrganizationConfigRuleStatusesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationConfigRuleStatuses => (is => 'ro', isa => 'ArrayRef[Paws::Config::OrganizationConfigRuleStatus]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeOrganizationConfigRuleStatusesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 OrganizationConfigRuleStatuses => ArrayRef[L<Paws::Config::OrganizationConfigRuleStatus>]




=head2 _request_id => Str


=cut

1;