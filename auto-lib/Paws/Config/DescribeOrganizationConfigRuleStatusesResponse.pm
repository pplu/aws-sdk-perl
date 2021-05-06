
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

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 OrganizationConfigRuleStatuses => ArrayRef[L<Paws::Config::OrganizationConfigRuleStatus>]

A list of C<OrganizationConfigRuleStatus> objects.


=head2 _request_id => Str


=cut

1;