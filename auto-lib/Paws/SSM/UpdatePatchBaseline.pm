
package Paws::SSM::UpdatePatchBaseline;
  use Moose;
  has ApprovalRules => (is => 'ro', isa => 'Paws::SSM::PatchRuleGroup');
  has ApprovedPatches => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ApprovedPatchesComplianceLevel => (is => 'ro', isa => 'Str');
  has ApprovedPatchesEnableNonSecurity => (is => 'ro', isa => 'Bool');
  has BaselineId => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has GlobalFilters => (is => 'ro', isa => 'Paws::SSM::PatchFilterGroup');
  has Name => (is => 'ro', isa => 'Str');
  has RejectedPatches => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Replace => (is => 'ro', isa => 'Bool');
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::SSM::PatchSource]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePatchBaseline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::UpdatePatchBaselineResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdatePatchBaseline - Arguments for method UpdatePatchBaseline on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePatchBaseline on the 
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method UpdatePatchBaseline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePatchBaseline.

As an example:

  $service_obj->UpdatePatchBaseline(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ApprovalRules => L<Paws::SSM::PatchRuleGroup>

A set of rules used to include patches in the baseline.



=head2 ApprovedPatches => ArrayRef[Str|Undef]

A list of explicitly approved patches for the baseline.

For information about accepted formats for lists of approved patches
and rejected patches, see Package Name Formats for Approved and
Rejected Patch Lists
(http://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html)
in the I<AWS Systems Manager User Guide>.



=head2 ApprovedPatchesComplianceLevel => Str

Assigns a new compliance severity level to an existing patch baseline.

Valid values are: C<"CRITICAL">, C<"HIGH">, C<"MEDIUM">, C<"LOW">, C<"INFORMATIONAL">, C<"UNSPECIFIED">

=head2 ApprovedPatchesEnableNonSecurity => Bool

Indicates whether the list of approved patches includes non-security
updates that should be applied to the instances. The default value is
'false'. Applies to Linux instances only.



=head2 B<REQUIRED> BaselineId => Str

The ID of the patch baseline to update.



=head2 Description => Str

A description of the patch baseline.



=head2 GlobalFilters => L<Paws::SSM::PatchFilterGroup>

A set of global filters used to exclude patches from the baseline.



=head2 Name => Str

The name of the patch baseline.



=head2 RejectedPatches => ArrayRef[Str|Undef]

A list of explicitly rejected patches for the baseline.

For information about accepted formats for lists of approved patches
and rejected patches, see Package Name Formats for Approved and
Rejected Patch Lists
(http://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html)
in the I<AWS Systems Manager User Guide>.



=head2 Replace => Bool

If True, then all fields that are required by the CreatePatchBaseline
action are also required for this API request. Optional fields that are
not specified are set to null.



=head2 Sources => ArrayRef[L<Paws::SSM::PatchSource>]

Information about the patches to use to update the instances, including
target operating systems and source repositories. Applies to Linux
instances only.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePatchBaseline in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

