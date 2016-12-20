
package Paws::SSM::GetPatchBaselineResult;
  use Moose;
  has ApprovalRules => (is => 'ro', isa => 'Paws::SSM::PatchRuleGroup');
  has ApprovedPatches => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has BaselineId => (is => 'ro', isa => 'Str');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has GlobalFilters => (is => 'ro', isa => 'Paws::SSM::PatchFilterGroup');
  has ModifiedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has PatchGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RejectedPatches => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetPatchBaselineResult

=head1 ATTRIBUTES


=head2 ApprovalRules => L<Paws::SSM::PatchRuleGroup>

A set of rules used to include patches in the baseline.


=head2 ApprovedPatches => ArrayRef[Str|Undef]

A list of explicitly approved patches for the baseline.


=head2 BaselineId => Str

The ID of the retrieved patch baseline.


=head2 CreatedDate => Str

The date the patch baseline was created.


=head2 Description => Str

A description of the patch baseline.


=head2 GlobalFilters => L<Paws::SSM::PatchFilterGroup>

A set of global filters used to exclude patches from the baseline.


=head2 ModifiedDate => Str

The date the patch baseline was last modified.


=head2 Name => Str

The name of the patch baseline.


=head2 PatchGroups => ArrayRef[Str|Undef]

Patch groups included in the patch baseline.


=head2 RejectedPatches => ArrayRef[Str|Undef]

A list of explicitly rejected patches for the baseline.


=head2 _request_id => Str


=cut

1;