package Paws::SecurityHub::AwsRdsDbInstanceDetails;
  use Moose;
  has AssociatedRoles => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsRdsDbInstanceAssociatedRole]');
  has CACertificateIdentifier => (is => 'ro', isa => 'Str');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DbInstancePort => (is => 'ro', isa => 'Int');
  has DbiResourceId => (is => 'ro', isa => 'Str');
  has DBName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has Endpoint => (is => 'ro', isa => 'Paws::SecurityHub::AwsRdsDbInstanceEndpoint');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has IAMDatabaseAuthenticationEnabled => (is => 'ro', isa => 'Bool');
  has InstanceCreateTime => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
  has TdeCredentialArn => (is => 'ro', isa => 'Str');
  has VpcSecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsRdsDbInstanceVpcSecurityGroup]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsRdsDbInstanceDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsRdsDbInstanceDetails object:

  $service_obj->Method(Att1 => { AssociatedRoles => $value, ..., VpcSecurityGroups => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsRdsDbInstanceDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatedRoles

=head1 DESCRIPTION

Contains the details of an Amazon RDS DB instance.

=head1 ATTRIBUTES


=head2 AssociatedRoles => ArrayRef[L<Paws::SecurityHub::AwsRdsDbInstanceAssociatedRole>]

  The AWS Identity and Access Management (IAM) roles associated with the
DB instance.


=head2 CACertificateIdentifier => Str

  The identifier of the CA certificate for this DB instance.


=head2 DBClusterIdentifier => Str

  If the DB instance is a member of a DB cluster, contains the name of
the DB cluster that the DB instance is a member of.


=head2 DBInstanceClass => Str

  Contains the name of the compute and memory capacity class of the DB
instance.


=head2 DBInstanceIdentifier => Str

  Contains a user-supplied database identifier. This identifier is the
unique key that identifies a DB instance.


=head2 DbInstancePort => Int

  Specifies the port that the DB instance listens on. If the DB instance
is part of a DB cluster, this can be a different port than the DB
cluster port.


=head2 DbiResourceId => Str

  The AWS Region-unique, immutable identifier for the DB instance. This
identifier is found in AWS CloudTrail log entries whenever the AWS KMS
key for the DB instance is accessed.


=head2 DBName => Str

  The meaning of this parameter differs according to the database engine
you use.

B<MySQL, MariaDB, SQL Server, PostgreSQL>

Contains the name of the initial database of this instance that was
provided at create time, if one was specified when the DB instance was
created. This same name is returned for the life of the DB instance.

B<Oracle>

Contains the Oracle System ID (SID) of the created DB instance. Not
shown when the returned parameters do not apply to an Oracle DB
instance.


=head2 DeletionProtection => Bool

  Indicates whether the DB instance has deletion protection enabled.

When deletion protection is enabled, the database cannot be deleted.


=head2 Endpoint => L<Paws::SecurityHub::AwsRdsDbInstanceEndpoint>

  Specifies the connection endpoint.


=head2 Engine => Str

  Provides the name of the database engine to use for this DB instance.


=head2 EngineVersion => Str

  Indicates the database engine version.


=head2 IAMDatabaseAuthenticationEnabled => Bool

  True if mapping of AWS Identity and Access Management (IAM) accounts to
database accounts is enabled, and otherwise false.

IAM database authentication can be enabled for the following database
engines.

=over

=item *

For MySQL 5.6, minor version 5.6.34 or higher

=item *

For MySQL 5.7, minor version 5.7.16 or higher

=item *

Aurora 5.6 or higher

=back



=head2 InstanceCreateTime => Str

  Provides the date and time the DB instance was created.


=head2 KmsKeyId => Str

  If C<StorageEncrypted> is true, the AWS KMS key identifier for the
encrypted DB instance.


=head2 PubliclyAccessible => Bool

  Specifies the accessibility options for the DB instance.

A value of true specifies an Internet-facing instance with a publicly
resolvable DNS name, which resolves to a public IP address.

A value of false specifies an internal instance with a DNS name that
resolves to a private IP address.


=head2 StorageEncrypted => Bool

  Specifies whether the DB instance is encrypted.


=head2 TdeCredentialArn => Str

  The ARN from the key store with which the instance is associated for
TDE encryption.


=head2 VpcSecurityGroups => ArrayRef[L<Paws::SecurityHub::AwsRdsDbInstanceVpcSecurityGroup>]

  A list of VPC security groups that the DB instance belongs to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

