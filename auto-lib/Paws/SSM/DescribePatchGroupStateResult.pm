
package Paws::SSM::DescribePatchGroupStateResult;
  use Moose;
  has Instances => (is => 'ro', isa => 'Int');
  has InstancesWithCriticalNonCompliantPatches => (is => 'ro', isa => 'Int');
  has InstancesWithFailedPatches => (is => 'ro', isa => 'Int');
  has InstancesWithInstalledOtherPatches => (is => 'ro', isa => 'Int');
  has InstancesWithInstalledPatches => (is => 'ro', isa => 'Int');
  has InstancesWithInstalledPendingRebootPatches => (is => 'ro', isa => 'Int');
  has InstancesWithInstalledRejectedPatches => (is => 'ro', isa => 'Int');
  has InstancesWithMissingPatches => (is => 'ro', isa => 'Int');
  has InstancesWithNotApplicablePatches => (is => 'ro', isa => 'Int');
  has InstancesWithOtherNonCompliantPatches => (is => 'ro', isa => 'Int');
  has InstancesWithSecurityNonCompliantPatches => (is => 'ro', isa => 'Int');
  has InstancesWithUnreportedNotApplicablePatches => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribePatchGroupStateResult

=head1 ATTRIBUTES


=head2 Instances => Int

The number of instances in the patch group.


=head2 InstancesWithCriticalNonCompliantPatches => Int

The number of instances where patches that are specified as "Critical"
for compliance reporting in the patch baseline are not installed. These
patches might be missing, have failed installation, were rejected, or
were installed but awaiting a required instance reboot. The status of
these instances is C<NON_COMPLIANT>.


=head2 InstancesWithFailedPatches => Int

The number of instances with patches from the patch baseline that
failed to install.


=head2 InstancesWithInstalledOtherPatches => Int

The number of instances with patches installed that aren't defined in
the patch baseline.


=head2 InstancesWithInstalledPatches => Int

The number of instances with installed patches.


=head2 InstancesWithInstalledPendingRebootPatches => Int

The number of instances with patches installed by Patch Manager that
have not been rebooted after the patch installation. The status of
these instances is NON_COMPLIANT.


=head2 InstancesWithInstalledRejectedPatches => Int

The number of instances with patches installed that are specified in a
RejectedPatches list. Patches with a status of I<INSTALLED_REJECTED>
were typically installed before they were added to a RejectedPatches
list.

If ALLOW_AS_DEPENDENCY is the specified option for
RejectedPatchesAction, the value of
InstancesWithInstalledRejectedPatches will always be 0 (zero).


=head2 InstancesWithMissingPatches => Int

The number of instances with missing patches from the patch baseline.


=head2 InstancesWithNotApplicablePatches => Int

The number of instances with patches that aren't applicable.


=head2 InstancesWithOtherNonCompliantPatches => Int

The number of instances with patches installed that are specified as
other than "Critical" or "Security" but are not compliant with the
patch baseline. The status of these instances is NON_COMPLIANT.


=head2 InstancesWithSecurityNonCompliantPatches => Int

The number of instances where patches that are specified as "Security"
in a patch advisory are not installed. These patches might be missing,
have failed installation, were rejected, or were installed but awaiting
a required instance reboot. The status of these instances is
C<NON_COMPLIANT>.


=head2 InstancesWithUnreportedNotApplicablePatches => Int

The number of instances with C<NotApplicable> patches beyond the
supported limit, which are not reported by name to Systems Manager
Inventory.


=head2 _request_id => Str


=cut

1;