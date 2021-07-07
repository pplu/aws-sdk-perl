
package Paws::SSM::GetDeployablePatchSnapshotForInstance;
  use Moose;
  has BaselineOverride => (is => 'ro', isa => 'Paws::SSM::BaselineOverride');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeployablePatchSnapshotForInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetDeployablePatchSnapshotForInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetDeployablePatchSnapshotForInstance - Arguments for method GetDeployablePatchSnapshotForInstance on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeployablePatchSnapshotForInstance on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetDeployablePatchSnapshotForInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeployablePatchSnapshotForInstance.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetDeployablePatchSnapshotForInstanceResult =
      $ssm->GetDeployablePatchSnapshotForInstance(
      InstanceId       => 'MyInstanceId',
      SnapshotId       => 'MySnapshotId',
      BaselineOverride => {
        ApprovalRules => {
          PatchRules => [
            {
              PatchFilterGroup => {
                PatchFilters => [
                  {
                    Key => 'ARCH'
                    , # values: ARCH, ADVISORY_ID, BUGZILLA_ID, PATCH_SET, PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, CVE_ID, EPOCH, MSRC_SEVERITY, NAME, PATCH_ID, SECTION, PRIORITY, REPOSITORY, RELEASE, SEVERITY, SECURITY, VERSION
                    Values => [
                      'MyPatchFilterValue', ...    # min: 1, max: 64
                    ],    # min: 1, max: 20

                  },
                  ...
                ],    # max: 4

              },
              ApproveAfterDays => 1,        # max: 360; OPTIONAL
              ApproveUntilDate =>
                'MyPatchStringDateTime',    # min: 1, max: 10; OPTIONAL
              ComplianceLevel => 'CRITICAL'
              , # values: CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED; OPTIONAL
              EnableNonSecurity => 1,    # OPTIONAL
            },
            ...
          ],    # max: 10

        },    # OPTIONAL
        ApprovedPatches => [
          'MyPatchId', ...    # min: 1, max: 100
        ],    # max: 50; OPTIONAL
        ApprovedPatchesComplianceLevel => 'CRITICAL'
        , # values: CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED; OPTIONAL
        ApprovedPatchesEnableNonSecurity => 1,    # OPTIONAL
        GlobalFilters                    => {
          PatchFilters => [
            {
              Key => 'ARCH'
              , # values: ARCH, ADVISORY_ID, BUGZILLA_ID, PATCH_SET, PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, CVE_ID, EPOCH, MSRC_SEVERITY, NAME, PATCH_ID, SECTION, PRIORITY, REPOSITORY, RELEASE, SEVERITY, SECURITY, VERSION
              Values => [
                'MyPatchFilterValue', ...    # min: 1, max: 64
              ],    # min: 1, max: 20

            },
            ...
          ],    # max: 4

        },
        OperatingSystem => 'WINDOWS'
        , # values: WINDOWS, AMAZON_LINUX, AMAZON_LINUX_2, UBUNTU, REDHAT_ENTERPRISE_LINUX, SUSE, CENTOS, ORACLE_LINUX, DEBIAN, MACOS; OPTIONAL
        RejectedPatches => [
          'MyPatchId', ...    # min: 1, max: 100
        ],    # max: 50; OPTIONAL
        RejectedPatchesAction =>
          'ALLOW_AS_DEPENDENCY',  # values: ALLOW_AS_DEPENDENCY, BLOCK; OPTIONAL
        Sources => [
          {
            Configuration => 'MyPatchSourceConfiguration',   # min: 1, max: 1024
            Name          => 'MyPatchSourceName',
            Products      => [
              'MyPatchSourceProduct', ...                    # min: 1, max: 128
            ],    # min: 1, max: 20

          },
          ...
        ],    # max: 20; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $InstanceId = $GetDeployablePatchSnapshotForInstanceResult->InstanceId;
    my $Product    = $GetDeployablePatchSnapshotForInstanceResult->Product;
    my $SnapshotDownloadUrl =
      $GetDeployablePatchSnapshotForInstanceResult->SnapshotDownloadUrl;
    my $SnapshotId = $GetDeployablePatchSnapshotForInstanceResult->SnapshotId;

   # Returns a L<Paws::SSM::GetDeployablePatchSnapshotForInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetDeployablePatchSnapshotForInstance>

=head1 ATTRIBUTES


=head2 BaselineOverride => L<Paws::SSM::BaselineOverride>

Defines the basic information about a patch baseline override.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance for which the appropriate patch snapshot should
be retrieved.



=head2 B<REQUIRED> SnapshotId => Str

The user-defined snapshot ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeployablePatchSnapshotForInstance in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

