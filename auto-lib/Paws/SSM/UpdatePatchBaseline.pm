
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
  has RejectedPatchesAction => (is => 'ro', isa => 'Str');
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

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $UpdatePatchBaselineResult = $ssm->UpdatePatchBaseline(
      BaselineId    => 'MyBaselineId',
      ApprovalRules => {
        PatchRules => [
          {
            ApproveAfterDays => 1,    # max: 100
            PatchFilterGroup => {
              PatchFilters => [
                {
                  Key => 'PRODUCT'
                  , # values: PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
                  Values => [
                    'MyPatchFilterValue', ...    # min: 1, max: 64
                  ],                             # min: 1, max: 20

                },
                ...
              ],                                 # max: 4

            },
            ComplianceLevel => 'CRITICAL'
            , # values: CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED; OPTIONAL
            EnableNonSecurity => 1,    # OPTIONAL
          },
          ...
        ],                             # max: 10

      },    # OPTIONAL
      ApprovedPatches => [
        'MyPatchId', ...    # min: 1, max: 100
      ],                    # OPTIONAL
      ApprovedPatchesComplianceLevel   => 'CRITICAL',                 # OPTIONAL
      ApprovedPatchesEnableNonSecurity => 1,                          # OPTIONAL
      Description                      => 'MyBaselineDescription',    # OPTIONAL
      GlobalFilters                    => {
        PatchFilters => [
          {
            Key => 'PRODUCT'
            , # values: PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
            Values => [
              'MyPatchFilterValue', ...    # min: 1, max: 64
            ],                             # min: 1, max: 20

          },
          ...
        ],                                 # max: 4

      },    # OPTIONAL
      Name            => 'MyBaselineName',    # OPTIONAL
      RejectedPatches => [
        'MyPatchId', ...                      # min: 1, max: 100
      ],                                      # OPTIONAL
      RejectedPatchesAction => 'ALLOW_AS_DEPENDENCY',    # OPTIONAL
      Replace               => 1,                        # OPTIONAL
      Sources               => [
        {
          Configuration => 'MyPatchSourceConfiguration',    # min: 1, max: 512
          Name          => 'MyPatchSourceName',
          Products      => [
            'MyPatchSourceProduct', ...                     # min: 1, max: 128
          ],                                                # min: 1, max: 20

        },
        ...
      ],                                                    # OPTIONAL
    );

    # Results:
    my $ApprovalRules   = $UpdatePatchBaselineResult->ApprovalRules;
    my $ApprovedPatches = $UpdatePatchBaselineResult->ApprovedPatches;
    my $ApprovedPatchesComplianceLevel =
      $UpdatePatchBaselineResult->ApprovedPatchesComplianceLevel;
    my $ApprovedPatchesEnableNonSecurity =
      $UpdatePatchBaselineResult->ApprovedPatchesEnableNonSecurity;
    my $BaselineId      = $UpdatePatchBaselineResult->BaselineId;
    my $CreatedDate     = $UpdatePatchBaselineResult->CreatedDate;
    my $Description     = $UpdatePatchBaselineResult->Description;
    my $GlobalFilters   = $UpdatePatchBaselineResult->GlobalFilters;
    my $ModifiedDate    = $UpdatePatchBaselineResult->ModifiedDate;
    my $Name            = $UpdatePatchBaselineResult->Name;
    my $OperatingSystem = $UpdatePatchBaselineResult->OperatingSystem;
    my $RejectedPatches = $UpdatePatchBaselineResult->RejectedPatches;
    my $RejectedPatchesAction =
      $UpdatePatchBaselineResult->RejectedPatchesAction;
    my $Sources = $UpdatePatchBaselineResult->Sources;

    # Returns a L<Paws::SSM::UpdatePatchBaselineResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/UpdatePatchBaseline>

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



=head2 RejectedPatchesAction => Str

The action for Patch Manager to take on patches included in the
RejectedPackages list.

=over

=item *

B<ALLOW_AS_DEPENDENCY>: A package in the Rejected patches list is
installed only if it is a dependency of another package. It is
considered compliant with the patch baseline, and its status is
reported as I<InstalledOther>. This is the default action if no option
is specified.

=item *

B<BLOCK>: Packages in the RejectedPatches list, and packages that
include them as dependencies, are not installed under any
circumstances. If a package was installed before it was added to the
Rejected patches list, it is considered non-compliant with the patch
baseline, and its status is reported as I<InstalledRejected>.

=back


Valid values are: C<"ALLOW_AS_DEPENDENCY">, C<"BLOCK">

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

