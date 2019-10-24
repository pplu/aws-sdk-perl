# Generated from default/object.tt
package Paws::DocDB::DBCluster;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str Int Bool/;
  use Paws::DocDB::Types qw/DocDB_DBClusterMember DocDB_DBClusterRole DocDB_VpcSecurityGroupMembership/;
  has AssociatedRoles => (is => 'ro', isa => ArrayRef[DocDB_DBClusterRole]);
  has AvailabilityZones => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has BackupRetentionPeriod => (is => 'ro', isa => Int);
  has ClusterCreateTime => (is => 'ro', isa => Str);
  has DBClusterArn => (is => 'ro', isa => Str);
  has DBClusterIdentifier => (is => 'ro', isa => Str);
  has DBClusterMembers => (is => 'ro', isa => ArrayRef[DocDB_DBClusterMember]);
  has DBClusterParameterGroup => (is => 'ro', isa => Str);
  has DbClusterResourceId => (is => 'ro', isa => Str);
  has DBSubnetGroup => (is => 'ro', isa => Str);
  has DeletionProtection => (is => 'ro', isa => Bool);
  has EarliestRestorableTime => (is => 'ro', isa => Str);
  has EnabledCloudwatchLogsExports => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Endpoint => (is => 'ro', isa => Str);
  has Engine => (is => 'ro', isa => Str);
  has EngineVersion => (is => 'ro', isa => Str);
  has HostedZoneId => (is => 'ro', isa => Str);
  has KmsKeyId => (is => 'ro', isa => Str);
  has LatestRestorableTime => (is => 'ro', isa => Str);
  has MasterUsername => (is => 'ro', isa => Str);
  has MultiAZ => (is => 'ro', isa => Bool);
  has PercentProgress => (is => 'ro', isa => Str);
  has Port => (is => 'ro', isa => Int);
  has PreferredBackupWindow => (is => 'ro', isa => Str);
  has PreferredMaintenanceWindow => (is => 'ro', isa => Str);
  has ReaderEndpoint => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has StorageEncrypted => (is => 'ro', isa => Bool);
  has VpcSecurityGroups => (is => 'ro', isa => ArrayRef[DocDB_VpcSecurityGroupMembership]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VpcSecurityGroups' => {
                                        'class' => 'Paws::DocDB::VpcSecurityGroupMembership',
                                        'type' => 'ArrayRef[DocDB_VpcSecurityGroupMembership]'
                                      },
               'StorageEncrypted' => {
                                       'type' => 'Bool'
                                     },
               'ReaderEndpoint' => {
                                     'type' => 'Str'
                                   },
               'DeletionProtection' => {
                                         'type' => 'Bool'
                                       },
               'Status' => {
                             'type' => 'Str'
                           },
               'PreferredBackupWindow' => {
                                            'type' => 'Str'
                                          },
               'LatestRestorableTime' => {
                                           'type' => 'Str'
                                         },
               'EnabledCloudwatchLogsExports' => {
                                                   'type' => 'ArrayRef[Str|Undef]'
                                                 },
               'DBClusterMembers' => {
                                       'class' => 'Paws::DocDB::DBClusterMember',
                                       'type' => 'ArrayRef[DocDB_DBClusterMember]'
                                     },
               'MultiAZ' => {
                              'type' => 'Bool'
                            },
               'DBClusterIdentifier' => {
                                          'type' => 'Str'
                                        },
               'DBClusterParameterGroup' => {
                                              'type' => 'Str'
                                            },
               'PercentProgress' => {
                                      'type' => 'Str'
                                    },
               'MasterUsername' => {
                                     'type' => 'Str'
                                   },
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'Engine' => {
                             'type' => 'Str'
                           },
               'AvailabilityZones' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'Port' => {
                           'type' => 'Int'
                         },
               'EarliestRestorableTime' => {
                                             'type' => 'Str'
                                           },
               'HostedZoneId' => {
                                   'type' => 'Str'
                                 },
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'DbClusterResourceId' => {
                                          'type' => 'Str'
                                        },
               'DBClusterArn' => {
                                   'type' => 'Str'
                                 },
               'ClusterCreateTime' => {
                                        'type' => 'Str'
                                      },
               'DBSubnetGroup' => {
                                    'type' => 'Str'
                                  },
               'PreferredMaintenanceWindow' => {
                                                 'type' => 'Str'
                                               },
               'Endpoint' => {
                               'type' => 'Str'
                             },
               'BackupRetentionPeriod' => {
                                            'type' => 'Int'
                                          },
               'AssociatedRoles' => {
                                      'class' => 'Paws::DocDB::DBClusterRole',
                                      'type' => 'ArrayRef[DocDB_DBClusterRole]'
                                    }
             },
  'NameInRequest' => {
                       'VpcSecurityGroups' => 'VpcSecurityGroupMembership',
                       'AvailabilityZones' => 'AvailabilityZone',
                       'DBClusterMembers' => 'DBClusterMember',
                       'AssociatedRoles' => 'DBClusterRole'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DBCluster

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DocDB::DBCluster object:

  $service_obj->Method(Att1 => { AssociatedRoles => $value, ..., VpcSecurityGroups => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DocDB::DBCluster object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatedRoles

=head1 DESCRIPTION

Detailed information about a DB cluster.

=head1 ATTRIBUTES


=head2 AssociatedRoles => ArrayRef[DocDB_DBClusterRole]

  Provides a list of the AWS Identity and Access Management (IAM) roles
that are associated with the DB cluster. IAM roles that are associated
with a DB cluster grant permission for the DB cluster to access other
AWS services on your behalf.


=head2 AvailabilityZones => ArrayRef[Str|Undef]

  Provides the list of Amazon EC2 Availability Zones that instances in
the DB cluster can be created in.


=head2 BackupRetentionPeriod => Int

  Specifies the number of days for which automatic DB snapshots are
retained.


=head2 ClusterCreateTime => Str

  Specifies the time when the DB cluster was created, in Universal
Coordinated Time (UTC).


=head2 DBClusterArn => Str

  The Amazon Resource Name (ARN) for the DB cluster.


=head2 DBClusterIdentifier => Str

  Contains a user-supplied DB cluster identifier. This identifier is the
unique key that identifies a DB cluster.


=head2 DBClusterMembers => ArrayRef[DocDB_DBClusterMember]

  Provides the list of instances that make up the DB cluster.


=head2 DBClusterParameterGroup => Str

  Specifies the name of the DB cluster parameter group for the DB
cluster.


=head2 DbClusterResourceId => Str

  The AWS Region-unique, immutable identifier for the DB cluster. This
identifier is found in AWS CloudTrail log entries whenever the AWS KMS
key for the DB cluster is accessed.


=head2 DBSubnetGroup => Str

  Specifies information on the subnet group that is associated with the
DB cluster, including the name, description, and subnets in the subnet
group.


=head2 DeletionProtection => Bool

  Specifies whether this cluster can be deleted. If C<DeletionProtection>
is enabled, the cluster cannot be deleted unless it is modified and
C<DeletionProtection> is disabled. C<DeletionProtection> protects
clusters from being accidentally deleted.


=head2 EarliestRestorableTime => Str

  The earliest time to which a database can be restored with
point-in-time restore.


=head2 EnabledCloudwatchLogsExports => ArrayRef[Str|Undef]

  A list of log types that this DB cluster is configured to export to
Amazon CloudWatch Logs.


=head2 Endpoint => Str

  Specifies the connection endpoint for the primary instance of the DB
cluster.


=head2 Engine => Str

  Provides the name of the database engine to be used for this DB
cluster.


=head2 EngineVersion => Str

  Indicates the database engine version.


=head2 HostedZoneId => Str

  Specifies the ID that Amazon Route 53 assigns when you create a hosted
zone.


=head2 KmsKeyId => Str

  If C<StorageEncrypted> is C<true>, the AWS KMS key identifier for the
encrypted DB cluster.


=head2 LatestRestorableTime => Str

  Specifies the latest time to which a database can be restored with
point-in-time restore.


=head2 MasterUsername => Str

  Contains the master user name for the DB cluster.


=head2 MultiAZ => Bool

  Specifies whether the DB cluster has instances in multiple Availability
Zones.


=head2 PercentProgress => Str

  Specifies the progress of the operation as a percentage.


=head2 Port => Int

  Specifies the port that the database engine is listening on.


=head2 PreferredBackupWindow => Str

  Specifies the daily time range during which automated backups are
created if automated backups are enabled, as determined by the
C<BackupRetentionPeriod>.


=head2 PreferredMaintenanceWindow => Str

  Specifies the weekly time range during which system maintenance can
occur, in Universal Coordinated Time (UTC).


=head2 ReaderEndpoint => Str

  The reader endpoint for the DB cluster. The reader endpoint for a DB
cluster load balances connections across the Amazon DocumentDB replicas
that are available in a DB cluster. As clients request new connections
to the reader endpoint, Amazon DocumentDB distributes the connection
requests among the Amazon DocumentDB replicas in the DB cluster. This
functionality can help balance your read workload across multiple
Amazon DocumentDB replicas in your DB cluster.

If a failover occurs, and the Amazon DocumentDB replica that you are
connected to is promoted to be the primary instance, your connection is
dropped. To continue sending your read workload to other Amazon
DocumentDB replicas in the cluster, you can then reconnect to the
reader endpoint.


=head2 Status => Str

  Specifies the current state of this DB cluster.


=head2 StorageEncrypted => Bool

  Specifies whether the DB cluster is encrypted.


=head2 VpcSecurityGroups => ArrayRef[DocDB_VpcSecurityGroupMembership]

  Provides a list of virtual private cloud (VPC) security groups that the
DB cluster belongs to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

