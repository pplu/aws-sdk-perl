
package Paws::Neptune::ModifyDBInstance;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AllowMajorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has ApplyImmediately => (is => 'ro', isa => 'Bool');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CACertificateIdentifier => (is => 'ro', isa => 'Str');
  has CloudwatchLogsExportConfiguration => (is => 'ro', isa => 'Paws::Neptune::CloudwatchLogsExportConfiguration');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has DBPortNumber => (is => 'ro', isa => 'Int');
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has Domain => (is => 'ro', isa => 'Str');
  has DomainIAMRoleName => (is => 'ro', isa => 'Str');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has EnablePerformanceInsights => (is => 'ro', isa => 'Bool');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has MonitoringInterval => (is => 'ro', isa => 'Int');
  has MonitoringRoleArn => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has NewDBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has PerformanceInsightsKMSKeyId => (is => 'ro', isa => 'Str');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PromotionTier => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has StorageType => (is => 'ro', isa => 'Str');
  has TdeCredentialArn => (is => 'ro', isa => 'Str');
  has TdeCredentialPassword => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::ModifyDBInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBInstanceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::ModifyDBInstance - Arguments for method ModifyDBInstance on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBInstance on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method ModifyDBInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBInstance.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $ModifyDBInstanceResult = $rds->ModifyDBInstance(
      DBInstanceIdentifier              => 'MyString',
      AllocatedStorage                  => 1,             # OPTIONAL
      AllowMajorVersionUpgrade          => 1,             # OPTIONAL
      ApplyImmediately                  => 1,             # OPTIONAL
      AutoMinorVersionUpgrade           => 1,             # OPTIONAL
      BackupRetentionPeriod             => 1,             # OPTIONAL
      CACertificateIdentifier           => 'MyString',    # OPTIONAL
      CloudwatchLogsExportConfiguration => {
        DisableLogTypes => [ 'MyString', ... ],           # OPTIONAL
        EnableLogTypes  => [ 'MyString', ... ],           # OPTIONAL
      },    # OPTIONAL
      CopyTagsToSnapshot              => 1,                      # OPTIONAL
      DBInstanceClass                 => 'MyString',             # OPTIONAL
      DBParameterGroupName            => 'MyString',             # OPTIONAL
      DBPortNumber                    => 1,                      # OPTIONAL
      DBSecurityGroups                => [ 'MyString', ... ],    # OPTIONAL
      DBSubnetGroupName               => 'MyString',             # OPTIONAL
      Domain                          => 'MyString',             # OPTIONAL
      DomainIAMRoleName               => 'MyString',             # OPTIONAL
      EnableIAMDatabaseAuthentication => 1,                      # OPTIONAL
      EnablePerformanceInsights       => 1,                      # OPTIONAL
      EngineVersion                   => 'MyString',             # OPTIONAL
      Iops                            => 1,                      # OPTIONAL
      LicenseModel                    => 'MyString',             # OPTIONAL
      MasterUserPassword              => 'MyString',             # OPTIONAL
      MonitoringInterval              => 1,                      # OPTIONAL
      MonitoringRoleArn               => 'MyString',             # OPTIONAL
      MultiAZ                         => 1,                      # OPTIONAL
      NewDBInstanceIdentifier         => 'MyString',             # OPTIONAL
      OptionGroupName                 => 'MyString',             # OPTIONAL
      PerformanceInsightsKMSKeyId     => 'MyString',             # OPTIONAL
      PreferredBackupWindow           => 'MyString',             # OPTIONAL
      PreferredMaintenanceWindow      => 'MyString',             # OPTIONAL
      PromotionTier                   => 1,                      # OPTIONAL
      PubliclyAccessible              => 1,                      # OPTIONAL
      StorageType                     => 'MyString',             # OPTIONAL
      TdeCredentialArn                => 'MyString',             # OPTIONAL
      TdeCredentialPassword           => 'MyString',             # OPTIONAL
      VpcSecurityGroupIds             => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $DBInstance = $ModifyDBInstanceResult->DBInstance;

    # Returns a L<Paws::Neptune::ModifyDBInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyDBInstance>

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The new amount of storage (in gibibytes) to allocate for the DB
instance.

Not applicable. Storage is managed by the DB Cluster.



=head2 AllowMajorVersionUpgrade => Bool

Indicates that major version upgrades are allowed. Changing this
parameter doesn't result in an outage and the change is asynchronously
applied as soon as possible.

Constraints: This parameter must be set to true when specifying a value
for the EngineVersion parameter that is a different major version than
the DB instance's current version.



=head2 ApplyImmediately => Bool

Specifies whether the modifications in this request and any pending
modifications are asynchronously applied as soon as possible,
regardless of the C<PreferredMaintenanceWindow> setting for the DB
instance.

If this parameter is set to C<false>, changes to the DB instance are
applied during the next maintenance window. Some parameter changes can
cause an outage and are applied on the next call to RebootDBInstance,
or the next failure reboot.

Default: C<false>



=head2 AutoMinorVersionUpgrade => Bool

Indicates that minor version upgrades are applied automatically to the
DB instance during the maintenance window. Changing this parameter
doesn't result in an outage except in the following case and the change
is asynchronously applied as soon as possible. An outage will result if
this parameter is set to C<true> during the maintenance window, and a
newer minor version is available, and Neptune has enabled auto patching
for that engine version.



=head2 BackupRetentionPeriod => Int

The number of days to retain automated backups. Setting this parameter
to a positive number enables backups. Setting this parameter to 0
disables automated backups.

Not applicable. The retention period for automated backups is managed
by the DB cluster. For more information, see ModifyDBCluster.

Default: Uses existing setting



=head2 CACertificateIdentifier => Str

Indicates the certificate that needs to be associated with the
instance.



=head2 CloudwatchLogsExportConfiguration => L<Paws::Neptune::CloudwatchLogsExportConfiguration>

The configuration setting for the log types to be enabled for export to
CloudWatch Logs for a specific DB instance or DB cluster.



=head2 CopyTagsToSnapshot => Bool

True to copy all tags from the DB instance to snapshots of the DB
instance, and otherwise false. The default is false.



=head2 DBInstanceClass => Str

The new compute and memory capacity of the DB instance, for example,
C<db.m4.large>. Not all DB instance classes are available in all AWS
Regions.

If you modify the DB instance class, an outage occurs during the
change. The change is applied during the next maintenance window,
unless C<ApplyImmediately> is specified as C<true> for this request.

Default: Uses existing setting



=head2 B<REQUIRED> DBInstanceIdentifier => Str

The DB instance identifier. This value is stored as a lowercase string.

Constraints:

=over

=item *

Must match the identifier of an existing DBInstance.

=back




=head2 DBParameterGroupName => Str

The name of the DB parameter group to apply to the DB instance.
Changing this setting doesn't result in an outage. The parameter group
name itself is changed immediately, but the actual parameter changes
are not applied until you reboot the instance without failover. The db
instance will NOT be rebooted automatically and the parameter changes
will NOT be applied during the next maintenance window.

Default: Uses existing setting

Constraints: The DB parameter group must be in the same DB parameter
group family as this DB instance.



=head2 DBPortNumber => Int

The port number on which the database accepts connections.

The value of the C<DBPortNumber> parameter must not match any of the
port values specified for options in the option group for the DB
instance.

Your database will restart when you change the C<DBPortNumber> value
regardless of the value of the C<ApplyImmediately> parameter.

Default: C<8182>



=head2 DBSecurityGroups => ArrayRef[Str|Undef]

A list of DB security groups to authorize on this DB instance. Changing
this setting doesn't result in an outage and the change is
asynchronously applied as soon as possible.

Constraints:

=over

=item *

If supplied, must match existing DBSecurityGroups.

=back




=head2 DBSubnetGroupName => Str

The new DB subnet group for the DB instance. You can use this parameter
to move your DB instance to a different VPC.

Changing the subnet group causes an outage during the change. The
change is applied during the next maintenance window, unless you
specify C<true> for the C<ApplyImmediately> parameter.

Constraints: If supplied, must match the name of an existing
DBSubnetGroup.

Example: C<mySubnetGroup>



=head2 Domain => Str

Not supported.



=head2 DomainIAMRoleName => Str

Not supported



=head2 EnableIAMDatabaseAuthentication => Bool

True to enable mapping of AWS Identity and Access Management (IAM)
accounts to database accounts, and otherwise false.

You can enable IAM database authentication for the following database
engines

Not applicable. Mapping AWS IAM accounts to database accounts is
managed by the DB cluster. For more information, see ModifyDBCluster.

Default: C<false>



=head2 EnablePerformanceInsights => Bool

True to enable Performance Insights for the DB instance, and otherwise
false.



=head2 EngineVersion => Str

The version number of the database engine to upgrade to. Changing this
parameter results in an outage and the change is applied during the
next maintenance window unless the C<ApplyImmediately> parameter is set
to C<true> for this request.

For major version upgrades, if a nondefault DB parameter group is
currently in use, a new DB parameter group in the DB parameter group
family for the new engine version must be specified. The new DB
parameter group can be the default for that DB parameter group family.



=head2 Iops => Int

The new Provisioned IOPS (I/O operations per second) value for the
instance.

Changing this setting doesn't result in an outage and the change is
applied during the next maintenance window unless the
C<ApplyImmediately> parameter is set to C<true> for this request.

Default: Uses existing setting



=head2 LicenseModel => Str

The license model for the DB instance.

Valid values: C<license-included> | C<bring-your-own-license> |
C<general-public-license>



=head2 MasterUserPassword => Str

The new password for the master user. The password can include any
printable ASCII character except "/", """, or "@".

Not applicable.

Default: Uses existing setting



=head2 MonitoringInterval => Int

The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the DB instance. To disable collecting
Enhanced Monitoring metrics, specify 0. The default is 0.

If C<MonitoringRoleArn> is specified, then you must also set
C<MonitoringInterval> to a value other than 0.

Valid Values: C<0, 1, 5, 10, 15, 30, 60>



=head2 MonitoringRoleArn => Str

The ARN for the IAM role that permits Neptune to send enhanced
monitoring metrics to Amazon CloudWatch Logs. For example,
C<arn:aws:iam:123456789012:role/emaccess>.

If C<MonitoringInterval> is set to a value other than 0, then you must
supply a C<MonitoringRoleArn> value.



=head2 MultiAZ => Bool

Specifies if the DB instance is a Multi-AZ deployment. Changing this
parameter doesn't result in an outage and the change is applied during
the next maintenance window unless the C<ApplyImmediately> parameter is
set to C<true> for this request.



=head2 NewDBInstanceIdentifier => Str

The new DB instance identifier for the DB instance when renaming a DB
instance. When you change the DB instance identifier, an instance
reboot will occur immediately if you set C<Apply Immediately> to true,
or will occur during the next maintenance window if C<Apply
Immediately> to false. This value is stored as a lowercase string.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

The first character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back

Example: C<mydbinstance>



=head2 OptionGroupName => Str

Indicates that the DB instance should be associated with the specified
option group. Changing this parameter doesn't result in an outage
except in the following case and the change is applied during the next
maintenance window unless the C<ApplyImmediately> parameter is set to
C<true> for this request. If the parameter change results in an option
group that enables OEM, this change can cause a brief (sub-second)
period during which new connections are rejected but existing
connections are not interrupted.

Permanent options, such as the TDE option for Oracle Advanced Security
TDE, can't be removed from an option group, and that option group can't
be removed from a DB instance once it is associated with a DB instance



=head2 PerformanceInsightsKMSKeyId => Str

The AWS KMS key identifier for encryption of Performance Insights data.
The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier,
or the KMS key alias for the KMS encryption key.



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled.

Not applicable. The daily time range for creating automated backups is
managed by the DB cluster. For more information, see ModifyDBCluster.

Constraints:

=over

=item *

Must be in the format hh24:mi-hh24:mi

=item *

Must be in Universal Time Coordinated (UTC)

=item *

Must not conflict with the preferred maintenance window

=item *

Must be at least 30 minutes

=back




=head2 PreferredMaintenanceWindow => Str

The weekly time range (in UTC) during which system maintenance can
occur, which might result in an outage. Changing this parameter doesn't
result in an outage, except in the following situation, and the change
is asynchronously applied as soon as possible. If there are pending
actions that cause a reboot, and the maintenance window is changed to
include the current time, then changing this parameter will cause a
reboot of the DB instance. If moving this window to the current time,
there must be at least 30 minutes between the current time and end of
the window to ensure pending changes are applied.

Default: Uses existing setting

Format: ddd:hh24:mi-ddd:hh24:mi

Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun

Constraints: Must be at least 30 minutes



=head2 PromotionTier => Int

A value that specifies the order in which a Read Replica is promoted to
the primary instance after a failure of the existing primary instance.

Default: 1

Valid Values: 0 - 15



=head2 PubliclyAccessible => Bool

This parameter is not supported.



=head2 StorageType => Str

Specifies the storage type to be associated with the DB instance.

If you specify Provisioned IOPS (C<io1>), you must also include a value
for the C<Iops> parameter.

If you choose to migrate your DB instance from using standard storage
to using Provisioned IOPS, or from using Provisioned IOPS to using
standard storage, the process can take time. The duration of the
migration depends on several factors such as database load, storage
size, storage type (standard or Provisioned IOPS), amount of IOPS
provisioned (if any), and the number of prior scale storage operations.
Typical migration times are under 24 hours, but the process can take up
to several days in some cases. During the migration, the DB instance is
available for use, but might experience performance degradation. While
the migration takes place, nightly backups for the instance are
suspended. No other Amazon Neptune operations can take place for the
instance, including modifying the instance, rebooting the instance,
deleting the instance, creating a Read Replica for the instance, and
creating a DB snapshot of the instance.

Valid values: C<standard | gp2 | io1>

Default: C<io1> if the C<Iops> parameter is specified, otherwise
C<standard>



=head2 TdeCredentialArn => Str

The ARN from the key store with which to associate the instance for TDE
encryption.



=head2 TdeCredentialPassword => Str

The password for the given ARN from the key store in order to access
the device.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to authorize on this DB instance.
This change is asynchronously applied as soon as possible.

Not applicable. The associated list of EC2 VPC security groups is
managed by the DB cluster. For more information, see ModifyDBCluster.

Constraints:

=over

=item *

If supplied, must match existing VpcSecurityGroupIds.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBInstance in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

