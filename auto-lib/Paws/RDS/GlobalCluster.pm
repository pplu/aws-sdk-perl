package Paws::RDS::GlobalCluster;
  use Moose;
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has GlobalClusterArn => (is => 'ro', isa => 'Str');
  has GlobalClusterIdentifier => (is => 'ro', isa => 'Str');
  has GlobalClusterMembers => (is => 'ro', isa => 'ArrayRef[Paws::RDS::GlobalClusterMember]', request_name => 'GlobalClusterMember', traits => ['NameInRequest']);
  has GlobalClusterResourceId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::GlobalCluster

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::GlobalCluster object:

  $service_obj->Method(Att1 => { DatabaseName => $value, ..., StorageEncrypted => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::GlobalCluster object:

  $result = $service_obj->Method(...);
  $result->Att1->DatabaseName

=head1 DESCRIPTION

A data type representing an Aurora global database.

=head1 ATTRIBUTES


=head2 DatabaseName => Str

  The default database name within the new global database cluster.


=head2 DeletionProtection => Bool

  The deletion protection setting for the new global database cluster.


=head2 Engine => Str

  The Aurora database engine used by the global database cluster.


=head2 EngineVersion => Str

  Indicates the database engine version.


=head2 GlobalClusterArn => Str

  The Amazon Resource Name (ARN) for the global database cluster.


=head2 GlobalClusterIdentifier => Str

  Contains a user-supplied global database cluster identifier. This
identifier is the unique key that identifies a global database cluster.


=head2 GlobalClusterMembers => ArrayRef[L<Paws::RDS::GlobalClusterMember>]

  The list of cluster IDs for secondary clusters within the global
database cluster. Currently limited to 1 item.


=head2 GlobalClusterResourceId => Str

  The AWS Region-unique, immutable identifier for the global database
cluster. This identifier is found in AWS CloudTrail log entries
whenever the AWS KMS key for the DB cluster is accessed.


=head2 Status => Str

  Specifies the current state of this global database cluster.


=head2 StorageEncrypted => Bool

  The storage encryption setting for the global database cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

