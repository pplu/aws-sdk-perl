# Generated from json/callresult_class.tt

package Paws::SSM::GetPatchBaselineResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::SSM::Types qw/SSM_PatchSource SSM_PatchFilterGroup SSM_PatchRuleGroup/;
  has ApprovalRules => (is => 'ro', isa => SSM_PatchRuleGroup);
  has ApprovedPatches => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ApprovedPatchesComplianceLevel => (is => 'ro', isa => Str);
  has ApprovedPatchesEnableNonSecurity => (is => 'ro', isa => Bool);
  has BaselineId => (is => 'ro', isa => Str);
  has CreatedDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has GlobalFilters => (is => 'ro', isa => SSM_PatchFilterGroup);
  has ModifiedDate => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has OperatingSystem => (is => 'ro', isa => Str);
  has PatchGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has RejectedPatches => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has RejectedPatchesAction => (is => 'ro', isa => Str);
  has Sources => (is => 'ro', isa => ArrayRef[SSM_PatchSource]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApprovedPatches' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'Sources' => {
                              'class' => 'Paws::SSM::PatchSource',
                              'type' => 'ArrayRef[SSM_PatchSource]'
                            },
               'ModifiedDate' => {
                                   'type' => 'Str'
                                 },
               'ApprovedPatchesEnableNonSecurity' => {
                                                       'type' => 'Bool'
                                                     },
               'ApprovalRules' => {
                                    'class' => 'Paws::SSM::PatchRuleGroup',
                                    'type' => 'SSM_PatchRuleGroup'
                                  },
               'ApprovedPatchesComplianceLevel' => {
                                                     'type' => 'Str'
                                                   },
               'BaselineId' => {
                                 'type' => 'Str'
                               },
               'GlobalFilters' => {
                                    'class' => 'Paws::SSM::PatchFilterGroup',
                                    'type' => 'SSM_PatchFilterGroup'
                                  },
               'RejectedPatches' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'PatchGroups' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RejectedPatchesAction' => {
                                            'type' => 'Str'
                                          },
               'OperatingSystem' => {
                                      'type' => 'Str'
                                    },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetPatchBaselineResult

=head1 ATTRIBUTES


=head2 ApprovalRules => SSM_PatchRuleGroup

A set of rules used to include patches in the baseline.


=head2 ApprovedPatches => ArrayRef[Str|Undef]

A list of explicitly approved patches for the baseline.


=head2 ApprovedPatchesComplianceLevel => Str

Returns the specified compliance severity level for approved patches in
the patch baseline.

Valid values are: C<"CRITICAL">, C<"HIGH">, C<"MEDIUM">, C<"LOW">, C<"INFORMATIONAL">, C<"UNSPECIFIED">
=head2 ApprovedPatchesEnableNonSecurity => Bool

Indicates whether the list of approved patches includes non-security
updates that should be applied to the instances. The default value is
'false'. Applies to Linux instances only.


=head2 BaselineId => Str

The ID of the retrieved patch baseline.


=head2 CreatedDate => Str

The date the patch baseline was created.


=head2 Description => Str

A description of the patch baseline.


=head2 GlobalFilters => SSM_PatchFilterGroup

A set of global filters used to exclude patches from the baseline.


=head2 ModifiedDate => Str

The date the patch baseline was last modified.


=head2 Name => Str

The name of the patch baseline.


=head2 OperatingSystem => Str

Returns the operating system specified for the patch baseline.

Valid values are: C<"WINDOWS">, C<"AMAZON_LINUX">, C<"AMAZON_LINUX_2">, C<"UBUNTU">, C<"REDHAT_ENTERPRISE_LINUX">, C<"SUSE">, C<"CENTOS">
=head2 PatchGroups => ArrayRef[Str|Undef]

Patch groups included in the patch baseline.


=head2 RejectedPatches => ArrayRef[Str|Undef]

A list of explicitly rejected patches for the baseline.


=head2 RejectedPatchesAction => Str

The action specified to take on patches included in the RejectedPatches
list. A patch can be allowed only if it is a dependency of another
package, or blocked entirely along with packages that include it as a
dependency.

Valid values are: C<"ALLOW_AS_DEPENDENCY">, C<"BLOCK">
=head2 Sources => ArrayRef[SSM_PatchSource]

Information about the patches to use to update the instances, including
target operating systems and source repositories. Applies to Linux
instances only.


=head2 _request_id => Str


=cut

1;