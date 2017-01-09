
package Paws::SSM::DescribePatchGroupStateResult;
  use Moose;
  has Instances => (is => 'ro', isa => 'Int');
  has InstancesWithFailedPatches => (is => 'ro', isa => 'Int');
  has InstancesWithInstalledOtherPatches => (is => 'ro', isa => 'Int');
  has InstancesWithInstalledPatches => (is => 'ro', isa => 'Int');
  has InstancesWithMissingPatches => (is => 'ro', isa => 'Int');
  has InstancesWithNotApplicablePatches => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribePatchGroupStateResult

=head1 ATTRIBUTES


=head2 Instances => Int

The number of instances in the patch group.


=head2 InstancesWithFailedPatches => Int

The number of instances with patches from the patch baseline that
failed to install.


=head2 InstancesWithInstalledOtherPatches => Int

The number of instances with patches installed that arenE<rsquo>t
defined in the patch baseline.


=head2 InstancesWithInstalledPatches => Int

The number of instances with installed patches.


=head2 InstancesWithMissingPatches => Int

The number of instances with missing patches from the patch baseline.


=head2 InstancesWithNotApplicablePatches => Int

The number of instances with patches that arenE<rsquo>t applicable.


=head2 _request_id => Str


=cut

1;