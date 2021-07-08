
package Paws::DMS::ModifyReplicationInstance;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AllowMajorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has ApplyImmediately => (is => 'ro', isa => 'Bool');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ReplicationInstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationInstanceClass => (is => 'ro', isa => 'Str');
  has ReplicationInstanceIdentifier => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyReplicationInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::ModifyReplicationInstanceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ModifyReplicationInstance - Arguments for method ModifyReplicationInstance on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyReplicationInstance on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method ModifyReplicationInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyReplicationInstance.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
# Modify replication instance
# Modifies the replication instance to apply new settings. You can change one or
# more parameters by specifying these parameters and the new values in the
# request. Some settings are applied during the maintenance window.
    my $ModifyReplicationInstanceResponse = $dms->ModifyReplicationInstance(
      'AllocatedStorage'           => 123,
      'AllowMajorVersionUpgrade'   => 1,
      'ApplyImmediately'           => 1,
      'AutoMinorVersionUpgrade'    => 1,
      'EngineVersion'              => '1.5.0',
      'MultiAZ'                    => 1,
      'PreferredMaintenanceWindow' => 'sun:06:00-sun:14:00',
      'ReplicationInstanceArn'     =>
        'arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ',
      'ReplicationInstanceClass'      => 'dms.t2.micro',
      'ReplicationInstanceIdentifier' => 'test-rep-1',
      'VpcSecurityGroupIds'           => [

      ]
    );

    # Results:
    my $ReplicationInstance =
      $ModifyReplicationInstanceResponse->ReplicationInstance;

    # Returns a L<Paws::DMS::ModifyReplicationInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/ModifyReplicationInstance>

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The amount of storage (in gigabytes) to be allocated for the
replication instance.



=head2 AllowMajorVersionUpgrade => Bool

Indicates that major version upgrades are allowed. Changing this
parameter does not result in an outage, and the change is
asynchronously applied as soon as possible.

This parameter must be set to C<true> when specifying a value for the
C<EngineVersion> parameter that is a different major version than the
replication instance's current version.



=head2 ApplyImmediately => Bool

Indicates whether the changes should be applied immediately or during
the next maintenance window.



=head2 AutoMinorVersionUpgrade => Bool

A value that indicates that minor version upgrades are applied
automatically to the replication instance during the maintenance
window. Changing this parameter doesn't result in an outage, except in
the case described following. The change is asynchronously applied as
soon as possible.

An outage does result if these factors apply:

=over

=item *

This parameter is set to C<true> during the maintenance window.

=item *

A newer minor version is available.

=item *

AWS DMS has enabled automatic patching for the given engine version.

=back




=head2 EngineVersion => Str

The engine version number of the replication instance.

When modifying a major engine version of an instance, also set
C<AllowMajorVersionUpgrade> to C<true>.



=head2 MultiAZ => Bool

Specifies whether the replication instance is a Multi-AZ deployment.
You can't set the C<AvailabilityZone> parameter if the Multi-AZ
parameter is set to C<true>.



=head2 PreferredMaintenanceWindow => Str

The weekly time range (in UTC) during which system maintenance can
occur, which might result in an outage. Changing this parameter does
not result in an outage, except in the following situation, and the
change is asynchronously applied as soon as possible. If moving this
window to the current time, there must be at least 30 minutes between
the current time and end of the window to ensure pending changes are
applied.

Default: Uses existing setting

Format: ddd:hh24:mi-ddd:hh24:mi

Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun

Constraints: Must be at least 30 minutes



=head2 B<REQUIRED> ReplicationInstanceArn => Str

The Amazon Resource Name (ARN) of the replication instance.



=head2 ReplicationInstanceClass => Str

The compute and memory capacity of the replication instance as defined
for the specified replication instance class. For example to specify
the instance class dms.c4.large, set this parameter to
C<"dms.c4.large">.

For more information on the settings and capacities for the available
replication instance classes, see Selecting the right AWS DMS
replication instance for your migration
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth).



=head2 ReplicationInstanceIdentifier => Str

The replication instance identifier. This parameter is stored as a
lowercase string.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

Specifies the VPC security group to be used with the replication
instance. The VPC security group must work with the VPC containing the
replication instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyReplicationInstance in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

