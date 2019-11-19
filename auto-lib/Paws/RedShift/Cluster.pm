# Generated from default/object.tt
package Paws::RedShift::Cluster;
  use Moo;
  use Types::Standard qw/Bool Int Str ArrayRef Undef/;
  use Paws::RedShift::Types qw/RedShift_VpcSecurityGroupMembership RedShift_ClusterNode RedShift_DataTransferProgress RedShift_Tag RedShift_PendingModifiedValues RedShift_ResizeInfo RedShift_HsmStatus RedShift_ClusterIamRole RedShift_ElasticIpStatus RedShift_ClusterSecurityGroupMembership RedShift_RestoreStatus RedShift_Endpoint RedShift_ClusterSnapshotCopyStatus RedShift_DeferredMaintenanceWindow RedShift_ClusterParameterGroupStatus/;
  has AllowVersionUpgrade => (is => 'ro', isa => Bool);
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => Int);
  has AvailabilityZone => (is => 'ro', isa => Str);
  has ClusterAvailabilityStatus => (is => 'ro', isa => Str);
  has ClusterCreateTime => (is => 'ro', isa => Str);
  has ClusterIdentifier => (is => 'ro', isa => Str);
  has ClusterNodes => (is => 'ro', isa => ArrayRef[RedShift_ClusterNode]);
  has ClusterParameterGroups => (is => 'ro', isa => ArrayRef[RedShift_ClusterParameterGroupStatus]);
  has ClusterPublicKey => (is => 'ro', isa => Str);
  has ClusterRevisionNumber => (is => 'ro', isa => Str);
  has ClusterSecurityGroups => (is => 'ro', isa => ArrayRef[RedShift_ClusterSecurityGroupMembership]);
  has ClusterSnapshotCopyStatus => (is => 'ro', isa => RedShift_ClusterSnapshotCopyStatus);
  has ClusterStatus => (is => 'ro', isa => Str);
  has ClusterSubnetGroupName => (is => 'ro', isa => Str);
  has ClusterVersion => (is => 'ro', isa => Str);
  has DataTransferProgress => (is => 'ro', isa => RedShift_DataTransferProgress);
  has DBName => (is => 'ro', isa => Str);
  has DeferredMaintenanceWindows => (is => 'ro', isa => ArrayRef[RedShift_DeferredMaintenanceWindow]);
  has ElasticIpStatus => (is => 'ro', isa => RedShift_ElasticIpStatus);
  has ElasticResizeNumberOfNodeOptions => (is => 'ro', isa => Str);
  has Encrypted => (is => 'ro', isa => Bool);
  has Endpoint => (is => 'ro', isa => RedShift_Endpoint);
  has EnhancedVpcRouting => (is => 'ro', isa => Bool);
  has ExpectedNextSnapshotScheduleTime => (is => 'ro', isa => Str);
  has ExpectedNextSnapshotScheduleTimeStatus => (is => 'ro', isa => Str);
  has HsmStatus => (is => 'ro', isa => RedShift_HsmStatus);
  has IamRoles => (is => 'ro', isa => ArrayRef[RedShift_ClusterIamRole]);
  has KmsKeyId => (is => 'ro', isa => Str);
  has MaintenanceTrackName => (is => 'ro', isa => Str);
  has ManualSnapshotRetentionPeriod => (is => 'ro', isa => Int);
  has MasterUsername => (is => 'ro', isa => Str);
  has ModifyStatus => (is => 'ro', isa => Str);
  has NextMaintenanceWindowStartTime => (is => 'ro', isa => Str);
  has NodeType => (is => 'ro', isa => Str);
  has NumberOfNodes => (is => 'ro', isa => Int);
  has PendingActions => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has PendingModifiedValues => (is => 'ro', isa => RedShift_PendingModifiedValues);
  has PreferredMaintenanceWindow => (is => 'ro', isa => Str);
  has PubliclyAccessible => (is => 'ro', isa => Bool);
  has ResizeInfo => (is => 'ro', isa => RedShift_ResizeInfo);
  has RestoreStatus => (is => 'ro', isa => RedShift_RestoreStatus);
  has SnapshotScheduleIdentifier => (is => 'ro', isa => Str);
  has SnapshotScheduleState => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[RedShift_Tag]);
  has VpcId => (is => 'ro', isa => Str);
  has VpcSecurityGroups => (is => 'ro', isa => ArrayRef[RedShift_VpcSecurityGroupMembership]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'Tag',
                       'DeferredMaintenanceWindows' => 'DeferredMaintenanceWindow',
                       'ClusterParameterGroups' => 'ClusterParameterGroup',
                       'ClusterSecurityGroups' => 'ClusterSecurityGroup',
                       'IamRoles' => 'ClusterIamRole',
                       'VpcSecurityGroups' => 'VpcSecurityGroup'
                     },
  'types' => {
               'ClusterNodes' => {
                                   'class' => 'Paws::RedShift::ClusterNode',
                                   'type' => 'ArrayRef[RedShift_ClusterNode]'
                                 },
               'DBName' => {
                             'type' => 'Str'
                           },
               'ClusterSubnetGroupName' => {
                                             'type' => 'Str'
                                           },
               'PubliclyAccessible' => {
                                         'type' => 'Bool'
                                       },
               'VpcId' => {
                            'type' => 'Str'
                          },
               'ClusterPublicKey' => {
                                       'type' => 'Str'
                                     },
               'NextMaintenanceWindowStartTime' => {
                                                     'type' => 'Str'
                                                   },
               'ClusterVersion' => {
                                     'type' => 'Str'
                                   },
               'RestoreStatus' => {
                                    'type' => 'RedShift_RestoreStatus',
                                    'class' => 'Paws::RedShift::RestoreStatus'
                                  },
               'SnapshotScheduleState' => {
                                            'type' => 'Str'
                                          },
               'MasterUsername' => {
                                     'type' => 'Str'
                                   },
               'DataTransferProgress' => {
                                           'type' => 'RedShift_DataTransferProgress',
                                           'class' => 'Paws::RedShift::DataTransferProgress'
                                         },
               'Endpoint' => {
                               'type' => 'RedShift_Endpoint',
                               'class' => 'Paws::RedShift::Endpoint'
                             },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'ClusterSnapshotCopyStatus' => {
                                                'class' => 'Paws::RedShift::ClusterSnapshotCopyStatus',
                                                'type' => 'RedShift_ClusterSnapshotCopyStatus'
                                              },
               'VpcSecurityGroups' => {
                                        'class' => 'Paws::RedShift::VpcSecurityGroupMembership',
                                        'type' => 'ArrayRef[RedShift_VpcSecurityGroupMembership]'
                                      },
               'ModifyStatus' => {
                                   'type' => 'Str'
                                 },
               'PendingActions' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   },
               'AllowVersionUpgrade' => {
                                          'type' => 'Bool'
                                        },
               'ClusterAvailabilityStatus' => {
                                                'type' => 'Str'
                                              },
               'ExpectedNextSnapshotScheduleTime' => {
                                                       'type' => 'Str'
                                                     },
               'PreferredMaintenanceWindow' => {
                                                 'type' => 'Str'
                                               },
               'ResizeInfo' => {
                                 'type' => 'RedShift_ResizeInfo',
                                 'class' => 'Paws::RedShift::ResizeInfo'
                               },
               'IamRoles' => {
                               'class' => 'Paws::RedShift::ClusterIamRole',
                               'type' => 'ArrayRef[RedShift_ClusterIamRole]'
                             },
               'ExpectedNextSnapshotScheduleTimeStatus' => {
                                                             'type' => 'Str'
                                                           },
               'Encrypted' => {
                                'type' => 'Bool'
                              },
               'HsmStatus' => {
                                'class' => 'Paws::RedShift::HsmStatus',
                                'type' => 'RedShift_HsmStatus'
                              },
               'ManualSnapshotRetentionPeriod' => {
                                                    'type' => 'Int'
                                                  },
               'ClusterParameterGroups' => {
                                             'class' => 'Paws::RedShift::ClusterParameterGroupStatus',
                                             'type' => 'ArrayRef[RedShift_ClusterParameterGroupStatus]'
                                           },
               'ClusterIdentifier' => {
                                        'type' => 'Str'
                                      },
               'ElasticIpStatus' => {
                                      'class' => 'Paws::RedShift::ElasticIpStatus',
                                      'type' => 'RedShift_ElasticIpStatus'
                                    },
               'EnhancedVpcRouting' => {
                                         'type' => 'Bool'
                                       },
               'DeferredMaintenanceWindows' => {
                                                 'class' => 'Paws::RedShift::DeferredMaintenanceWindow',
                                                 'type' => 'ArrayRef[RedShift_DeferredMaintenanceWindow]'
                                               },
               'ElasticResizeNumberOfNodeOptions' => {
                                                       'type' => 'Str'
                                                     },
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'NumberOfNodes' => {
                                    'type' => 'Int'
                                  },
               'Tags' => {
                           'class' => 'Paws::RedShift::Tag',
                           'type' => 'ArrayRef[RedShift_Tag]'
                         },
               'AutomatedSnapshotRetentionPeriod' => {
                                                       'type' => 'Int'
                                                     },
               'ClusterSecurityGroups' => {
                                            'type' => 'ArrayRef[RedShift_ClusterSecurityGroupMembership]',
                                            'class' => 'Paws::RedShift::ClusterSecurityGroupMembership'
                                          },
               'PendingModifiedValues' => {
                                            'class' => 'Paws::RedShift::PendingModifiedValues',
                                            'type' => 'RedShift_PendingModifiedValues'
                                          },
               'NodeType' => {
                               'type' => 'Str'
                             },
               'ClusterCreateTime' => {
                                        'type' => 'Str'
                                      },
               'SnapshotScheduleIdentifier' => {
                                                 'type' => 'Str'
                                               },
               'ClusterStatus' => {
                                    'type' => 'Str'
                                  },
               'MaintenanceTrackName' => {
                                           'type' => 'Str'
                                         },
               'ClusterRevisionNumber' => {
                                            'type' => 'Str'
                                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::Cluster

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::Cluster object:

  $service_obj->Method(Att1 => { AllowVersionUpgrade => $value, ..., VpcSecurityGroups => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::Cluster object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowVersionUpgrade

=head1 DESCRIPTION

Describes a cluster.

=head1 ATTRIBUTES


=head2 AllowVersionUpgrade => Bool

  A boolean value that, if C<true>, indicates that major version upgrades
will be applied automatically to the cluster during the maintenance
window.


=head2 AutomatedSnapshotRetentionPeriod => Int

  The number of days that automatic cluster snapshots are retained.


=head2 AvailabilityZone => Str

  The name of the Availability Zone in which the cluster is located.


=head2 ClusterAvailabilityStatus => Str

  The availability status of the cluster for queries. Possible values are
the following:

=over

=item *

Available - The cluster is available for queries.

=item *

Unavailable - The cluster is not available for queries.

=item *

Maintenance - The cluster is intermittently available for queries due
to maintenance activities.

=item *

Modifying - The cluster is intermittently available for queries due to
changes that modify the cluster.

=item *

Failed - The cluster failed and is not available for queries.

=back



=head2 ClusterCreateTime => Str

  The date and time that the cluster was created.


=head2 ClusterIdentifier => Str

  The unique identifier of the cluster.


=head2 ClusterNodes => ArrayRef[RedShift_ClusterNode]

  The nodes in the cluster.


=head2 ClusterParameterGroups => ArrayRef[RedShift_ClusterParameterGroupStatus]

  The list of cluster parameter groups that are associated with this
cluster. Each parameter group in the list is returned with its status.


=head2 ClusterPublicKey => Str

  The public key for the cluster.


=head2 ClusterRevisionNumber => Str

  The specific revision number of the database in the cluster.


=head2 ClusterSecurityGroups => ArrayRef[RedShift_ClusterSecurityGroupMembership]

  A list of cluster security group that are associated with the cluster.
Each security group is represented by an element that contains
C<ClusterSecurityGroup.Name> and C<ClusterSecurityGroup.Status>
subelements.

Cluster security groups are used when the cluster is not created in an
Amazon Virtual Private Cloud (VPC). Clusters that are created in a VPC
use VPC security groups, which are listed by the B<VpcSecurityGroups>
parameter.


=head2 ClusterSnapshotCopyStatus => RedShift_ClusterSnapshotCopyStatus

  A value that returns the destination region and retention period that
are configured for cross-region snapshot copy.


=head2 ClusterStatus => Str

  The current state of the cluster. Possible values are the following:

=over

=item *

C<available>

=item *

C<available, prep-for-resize>

=item *

C<available, resize-cleanup>

=item *

C<cancelling-resize>

=item *

C<creating>

=item *

C<deleting>

=item *

C<final-snapshot>

=item *

C<hardware-failure>

=item *

C<incompatible-hsm>

=item *

C<incompatible-network>

=item *

C<incompatible-parameters>

=item *

C<incompatible-restore>

=item *

C<modifying>

=item *

C<rebooting>

=item *

C<renaming>

=item *

C<resizing>

=item *

C<rotating-keys>

=item *

C<storage-full>

=item *

C<updating-hsm>

=back



=head2 ClusterSubnetGroupName => Str

  The name of the subnet group that is associated with the cluster. This
parameter is valid only when the cluster is in a VPC.


=head2 ClusterVersion => Str

  The version ID of the Amazon Redshift engine that is running on the
cluster.


=head2 DataTransferProgress => RedShift_DataTransferProgress

  


=head2 DBName => Str

  The name of the initial database that was created when the cluster was
created. This same name is returned for the life of the cluster. If an
initial database was not specified, a database named C<dev>dev was
created by default.


=head2 DeferredMaintenanceWindows => ArrayRef[RedShift_DeferredMaintenanceWindow]

  Describes a group of C<DeferredMaintenanceWindow> objects.


=head2 ElasticIpStatus => RedShift_ElasticIpStatus

  The status of the elastic IP (EIP) address.


=head2 ElasticResizeNumberOfNodeOptions => Str

  The number of nodes that you can resize the cluster to with the elastic
resize method.


=head2 Encrypted => Bool

  A boolean value that, if C<true>, indicates that data in the cluster is
encrypted at rest.


=head2 Endpoint => RedShift_Endpoint

  The connection endpoint.


=head2 EnhancedVpcRouting => Bool

  An option that specifies whether to create the cluster with enhanced
VPC routing enabled. To create a cluster that uses enhanced VPC
routing, the cluster must be in a VPC. For more information, see
Enhanced VPC Routing
(https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html)
in the Amazon Redshift Cluster Management Guide.

If this option is C<true>, enhanced VPC routing is enabled.

Default: false


=head2 ExpectedNextSnapshotScheduleTime => Str

  The date and time when the next snapshot is expected to be taken for
clusters with a valid snapshot schedule and backups enabled.


=head2 ExpectedNextSnapshotScheduleTimeStatus => Str

  The status of next expected snapshot for clusters having a valid
snapshot schedule and backups enabled. Possible values are the
following:

=over

=item *

OnTrack - The next snapshot is expected to be taken on time.

=item *

Pending - The next snapshot is pending to be taken.

=back



=head2 HsmStatus => RedShift_HsmStatus

  A value that reports whether the Amazon Redshift cluster has finished
applying any hardware security module (HSM) settings changes specified
in a modify cluster command.

Values: active, applying


=head2 IamRoles => ArrayRef[RedShift_ClusterIamRole]

  A list of AWS Identity and Access Management (IAM) roles that can be
used by the cluster to access other AWS services.


=head2 KmsKeyId => Str

  The AWS Key Management Service (AWS KMS) key ID of the encryption key
used to encrypt data in the cluster.


=head2 MaintenanceTrackName => Str

  The name of the maintenance track for the cluster.


=head2 ManualSnapshotRetentionPeriod => Int

  The default number of days to retain a manual snapshot. If the value is
-1, the snapshot is retained indefinitely. This setting doesn't change
the retention period of existing snapshots.

The value must be either -1 or an integer between 1 and 3,653.


=head2 MasterUsername => Str

  The master user name for the cluster. This name is used to connect to
the database that is specified in the B<DBName> parameter.


=head2 ModifyStatus => Str

  The status of a modify operation, if any, initiated for the cluster.


=head2 NextMaintenanceWindowStartTime => Str

  The date and time in UTC when system maintenance can begin.


=head2 NodeType => Str

  The node type for the nodes in the cluster.


=head2 NumberOfNodes => Int

  The number of compute nodes in the cluster.


=head2 PendingActions => ArrayRef[Str|Undef]

  Cluster operations that are waiting to be started.


=head2 PendingModifiedValues => RedShift_PendingModifiedValues

  A value that, if present, indicates that changes to the cluster are
pending. Specific pending changes are identified by subelements.


=head2 PreferredMaintenanceWindow => Str

  The weekly time range, in Universal Coordinated Time (UTC), during
which system maintenance can occur.


=head2 PubliclyAccessible => Bool

  A boolean value that, if C<true>, indicates that the cluster can be
accessed from a public network.


=head2 ResizeInfo => RedShift_ResizeInfo

  Returns the following:

=over

=item *

AllowCancelResize: a boolean value indicating if the resize operation
can be cancelled.

=item *

ResizeType: Returns ClassicResize

=back



=head2 RestoreStatus => RedShift_RestoreStatus

  A value that describes the status of a cluster restore action. This
parameter returns null if the cluster was not created by restoring a
snapshot.


=head2 SnapshotScheduleIdentifier => Str

  A unique identifier for the cluster snapshot schedule.


=head2 SnapshotScheduleState => Str

  The current state of the cluster snapshot schedule.


=head2 Tags => ArrayRef[RedShift_Tag]

  The list of tags for the cluster.


=head2 VpcId => Str

  The identifier of the VPC the cluster is in, if the cluster is in a
VPC.


=head2 VpcSecurityGroups => ArrayRef[RedShift_VpcSecurityGroupMembership]

  A list of Amazon Virtual Private Cloud (Amazon VPC) security groups
that are associated with the cluster. This parameter is returned only
if the cluster is in a VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

