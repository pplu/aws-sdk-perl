# Generated from default/object.tt
package Paws::RDS::OrderableDBInstanceOption;
  use Moo;
  use Types::Standard qw/ArrayRef Str Int Num Bool Undef/;
  use Paws::RDS::Types qw/RDS_AvailableProcessorFeature RDS_AvailabilityZone/;
  has AvailabilityZones => (is => 'ro', isa => ArrayRef[RDS_AvailabilityZone]);
  has AvailableProcessorFeatures => (is => 'ro', isa => ArrayRef[RDS_AvailableProcessorFeature]);
  has DBInstanceClass => (is => 'ro', isa => Str);
  has Engine => (is => 'ro', isa => Str);
  has EngineVersion => (is => 'ro', isa => Str);
  has LicenseModel => (is => 'ro', isa => Str);
  has MaxIopsPerDbInstance => (is => 'ro', isa => Int);
  has MaxIopsPerGib => (is => 'ro', isa => Num);
  has MaxStorageSize => (is => 'ro', isa => Int);
  has MinIopsPerDbInstance => (is => 'ro', isa => Int);
  has MinIopsPerGib => (is => 'ro', isa => Num);
  has MinStorageSize => (is => 'ro', isa => Int);
  has MultiAZCapable => (is => 'ro', isa => Bool);
  has ReadReplicaCapable => (is => 'ro', isa => Bool);
  has StorageType => (is => 'ro', isa => Str);
  has SupportedEngineModes => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SupportsEnhancedMonitoring => (is => 'ro', isa => Bool);
  has SupportsIAMDatabaseAuthentication => (is => 'ro', isa => Bool);
  has SupportsIops => (is => 'ro', isa => Bool);
  has SupportsPerformanceInsights => (is => 'ro', isa => Bool);
  has SupportsStorageAutoscaling => (is => 'ro', isa => Bool);
  has SupportsStorageEncryption => (is => 'ro', isa => Bool);
  has Vpc => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LicenseModel' => {
                                   'type' => 'Str'
                                 },
               'MaxStorageSize' => {
                                     'type' => 'Int'
                                   },
               'Vpc' => {
                          'type' => 'Bool'
                        },
               'SupportsStorageEncryption' => {
                                                'type' => 'Bool'
                                              },
               'ReadReplicaCapable' => {
                                         'type' => 'Bool'
                                       },
               'SupportsEnhancedMonitoring' => {
                                                 'type' => 'Bool'
                                               },
               'MinIopsPerGib' => {
                                    'type' => 'Num'
                                  },
               'SupportsPerformanceInsights' => {
                                                  'type' => 'Bool'
                                                },
               'MultiAZCapable' => {
                                     'type' => 'Bool'
                                   },
               'AvailableProcessorFeatures' => {
                                                 'class' => 'Paws::RDS::AvailableProcessorFeature',
                                                 'type' => 'ArrayRef[RDS_AvailableProcessorFeature]'
                                               },
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'MaxIopsPerGib' => {
                                    'type' => 'Num'
                                  },
               'SupportsStorageAutoscaling' => {
                                                 'type' => 'Bool'
                                               },
               'Engine' => {
                             'type' => 'Str'
                           },
               'SupportedEngineModes' => {
                                           'type' => 'ArrayRef[Str|Undef]'
                                         },
               'AvailabilityZones' => {
                                        'class' => 'Paws::RDS::AvailabilityZone',
                                        'type' => 'ArrayRef[RDS_AvailabilityZone]'
                                      },
               'MaxIopsPerDbInstance' => {
                                           'type' => 'Int'
                                         },
               'SupportsIAMDatabaseAuthentication' => {
                                                        'type' => 'Bool'
                                                      },
               'MinIopsPerDbInstance' => {
                                           'type' => 'Int'
                                         },
               'MinStorageSize' => {
                                     'type' => 'Int'
                                   },
               'StorageType' => {
                                  'type' => 'Str'
                                },
               'SupportsIops' => {
                                   'type' => 'Bool'
                                 },
               'DBInstanceClass' => {
                                      'type' => 'Str'
                                    }
             },
  'NameInRequest' => {
                       'AvailableProcessorFeatures' => 'AvailableProcessorFeature',
                       'AvailabilityZones' => 'AvailabilityZone'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::OrderableDBInstanceOption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::OrderableDBInstanceOption object:

  $service_obj->Method(Att1 => { AvailabilityZones => $value, ..., Vpc => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::OrderableDBInstanceOption object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZones

=head1 DESCRIPTION

Contains a list of available options for a DB instance.

This data type is used as a response element in the
C<DescribeOrderableDBInstanceOptions> action.

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[RDS_AvailabilityZone]

  A list of Availability Zones for a DB instance.


=head2 AvailableProcessorFeatures => ArrayRef[RDS_AvailableProcessorFeature]

  A list of the available processor features for the DB instance class of
a DB instance.


=head2 DBInstanceClass => Str

  The DB instance class for a DB instance.


=head2 Engine => Str

  The engine type of a DB instance.


=head2 EngineVersion => Str

  The engine version of a DB instance.


=head2 LicenseModel => Str

  The license model for a DB instance.


=head2 MaxIopsPerDbInstance => Int

  Maximum total provisioned IOPS for a DB instance.


=head2 MaxIopsPerGib => Num

  Maximum provisioned IOPS per GiB for a DB instance.


=head2 MaxStorageSize => Int

  Maximum storage size for a DB instance.


=head2 MinIopsPerDbInstance => Int

  Minimum total provisioned IOPS for a DB instance.


=head2 MinIopsPerGib => Num

  Minimum provisioned IOPS per GiB for a DB instance.


=head2 MinStorageSize => Int

  Minimum storage size for a DB instance.


=head2 MultiAZCapable => Bool

  Indicates whether a DB instance is Multi-AZ capable.


=head2 ReadReplicaCapable => Bool

  Indicates whether a DB instance can have a Read Replica.


=head2 StorageType => Str

  Indicates the storage type for a DB instance.


=head2 SupportedEngineModes => ArrayRef[Str|Undef]

  A list of the supported DB engine modes.


=head2 SupportsEnhancedMonitoring => Bool

  Indicates whether a DB instance supports Enhanced Monitoring at
intervals from 1 to 60 seconds.


=head2 SupportsIAMDatabaseAuthentication => Bool

  Indicates whether a DB instance supports IAM database authentication.


=head2 SupportsIops => Bool

  Indicates whether a DB instance supports provisioned IOPS.


=head2 SupportsPerformanceInsights => Bool

  True if a DB instance supports Performance Insights, otherwise false.


=head2 SupportsStorageAutoscaling => Bool

  Whether or not Amazon RDS can automatically scale storage for DB
instances that use the specified instance class.


=head2 SupportsStorageEncryption => Bool

  Indicates whether a DB instance supports encrypted storage.


=head2 Vpc => Bool

  Indicates whether a DB instance is in a VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

