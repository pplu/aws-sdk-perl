
package Paws::SecurityHub::DescribeOrganizationConfigurationResponse;
  use Moose;
  has AutoEnable => (is => 'ro', isa => 'Bool');
  has MemberAccountLimitReached => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DescribeOrganizationConfigurationResponse

=head1 ATTRIBUTES


=head2 AutoEnable => Bool

Whether to automatically enable Security Hub for new accounts in the
organization.

If set to C<true>, then Security Hub is enabled for new accounts. If
set to false, then new accounts are not added automatically.


=head2 MemberAccountLimitReached => Bool

Whether the maximum number of allowed member accounts are already
associated with the Security Hub administrator account.


=head2 _request_id => Str


=cut

