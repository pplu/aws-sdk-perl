
package Paws::SSM::UpdatePatchBaselineResult;
  use Moose;
  has ApprovalRules => (is => 'ro', isa => 'Paws::SSM::PatchRuleGroup');
  has ApprovedPatches => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ApprovedPatchesComplianceLevel => (is => 'ro', isa => 'Str');
  has BaselineId => (is => 'ro', isa => 'Str');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has GlobalFilters => (is => 'ro', isa => 'Paws::SSM::PatchFilterGroup');
  has ModifiedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OperatingSystem => (is => 'ro', isa => 'Str');
  has RejectedPatches => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdatePatchBaselineResult

=head1 ATTRIBUTES


=head2 ApprovalRules => L<Paws::SSM::PatchRuleGroup>

A set of rules used to include patches in the baseline.


=head2 ApprovedPatches => ArrayRef[Str|Undef]

A list of explicitly approved patches for the baseline.


=head2 ApprovedPatchesComplianceLevel => Str

The compliance severity level assigned to the patch baseline after the
update completed.

Valid values are: C<"CRITICAL">, C<"HIGH">, C<"MEDIUM">, C<"LOW">, C<"INFORMATIONAL">, C<"UNSPECIFIED">
=head2 BaselineId => Str

The ID of the deleted patch baseline.


=head2 CreatedDate => Str

The date when the patch baseline was created.


=head2 Description => Str

A description of the Patch Baseline.


=head2 GlobalFilters => L<Paws::SSM::PatchFilterGroup>

A set of global filters used to exclude patches from the baseline.


=head2 ModifiedDate => Str

The date when the patch baseline was last modified.


=head2 Name => Str

The name of the patch baseline.


=head2 OperatingSystem => Str

The operating system rule used by the updated patch baseline.

Valid values are: C<"WINDOWS">, C<"AMAZON_LINUX">, C<"UBUNTU">, C<"REDHAT_ENTERPRISE_LINUX">
=head2 RejectedPatches => ArrayRef[Str|Undef]

A list of explicitly rejected patches for the baseline.


=head2 _request_id => Str


=cut

1;