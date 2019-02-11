
package Paws::ES::GetUpgradeStatusResponse;
  use Moose;
  has StepStatus => (is => 'ro', isa => 'Str');
  has UpgradeName => (is => 'ro', isa => 'Str');
  has UpgradeStep => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::GetUpgradeStatusResponse

=head1 ATTRIBUTES


=head2 StepStatus => Str

One of 4 statuses that a step can go through returned as part of the C<
GetUpgradeStatusResponse > object. The status can take one of the
following values:

=over

=item * In Progress

=item * Succeeded

=item * Succeeded with Issues

=item * Failed

=back


Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"SUCCEEDED_WITH_ISSUES">, C<"FAILED">
=head2 UpgradeName => Str

A string that describes the update briefly


=head2 UpgradeStep => Str

Represents one of 3 steps that an Upgrade or Upgrade Eligibility Check
does through:

=over

=item * PreUpgradeCheck

=item * Snapshot

=item * Upgrade

=back


Valid values are: C<"PRE_UPGRADE_CHECK">, C<"SNAPSHOT">, C<"UPGRADE">
=head2 _request_id => Str


=cut

