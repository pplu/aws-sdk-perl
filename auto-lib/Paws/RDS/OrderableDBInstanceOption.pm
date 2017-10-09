package Paws::RDS::OrderableDBInstanceOption;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Paws::RDS::AvailabilityZone]', request_name => 'AvailabilityZone', traits => ['NameInRequest']);
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MultiAZCapable => (is => 'ro', isa => 'Bool');
  has ReadReplicaCapable => (is => 'ro', isa => 'Bool');
  has StorageType => (is => 'ro', isa => 'Str');
  has SupportsEnhancedMonitoring => (is => 'ro', isa => 'Bool');
  has SupportsIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has SupportsIops => (is => 'ro', isa => 'Bool');
  has SupportsPerformanceInsights => (is => 'ro', isa => 'Bool');
  has SupportsStorageEncryption => (is => 'ro', isa => 'Bool');
  has Vpc => (is => 'ro', isa => 'Bool');
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

Contains a list of available options for a DB instance

This data type is used as a response element in the
DescribeOrderableDBInstanceOptions action.

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[L<Paws::RDS::AvailabilityZone>]

  A list of Availability Zones for the orderable DB instance.


=head2 DBInstanceClass => Str

  The DB instance class for the orderable DB instance.


=head2 Engine => Str

  The engine type of the orderable DB instance.


=head2 EngineVersion => Str

  The engine version of the orderable DB instance.


=head2 LicenseModel => Str

  The license model for the orderable DB instance.


=head2 MultiAZCapable => Bool

  Indicates whether this orderable DB instance is multi-AZ capable.


=head2 ReadReplicaCapable => Bool

  Indicates whether this orderable DB instance can have a Read Replica.


=head2 StorageType => Str

  Indicates the storage type for this orderable DB instance.


=head2 SupportsEnhancedMonitoring => Bool

  Indicates whether the DB instance supports enhanced monitoring at
intervals from 1 to 60 seconds.


=head2 SupportsIAMDatabaseAuthentication => Bool

  Indicates whether this orderable DB instance supports IAM database
authentication.


=head2 SupportsIops => Bool

  Indicates whether this orderable DB instance supports provisioned IOPS.


=head2 SupportsPerformanceInsights => Bool

  


=head2 SupportsStorageEncryption => Bool

  Indicates whether this orderable DB instance supports encrypted
storage.


=head2 Vpc => Bool

  Indicates whether this is a VPC orderable DB instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

