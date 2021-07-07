
package Paws::RDS::StartDBInstanceAutomatedBackupsReplication;
  use Moose;
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has PreSignedUrl => (is => 'ro', isa => 'Str');
  has SourceDBInstanceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDBInstanceAutomatedBackupsReplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::StartDBInstanceAutomatedBackupsReplicationResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'StartDBInstanceAutomatedBackupsReplicationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::StartDBInstanceAutomatedBackupsReplication - Arguments for method StartDBInstanceAutomatedBackupsReplication on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDBInstanceAutomatedBackupsReplication on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method StartDBInstanceAutomatedBackupsReplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDBInstanceAutomatedBackupsReplication.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $StartDBInstanceAutomatedBackupsReplicationResult =
      $rds->StartDBInstanceAutomatedBackupsReplication(
      SourceDBInstanceArn   => 'MyString',
      BackupRetentionPeriod => 1,             # OPTIONAL
      KmsKeyId              => 'MyString',    # OPTIONAL
      PreSignedUrl          => 'MyString',    # OPTIONAL
      );

    # Results:
    my $DBInstanceAutomatedBackup =
      $StartDBInstanceAutomatedBackupsReplicationResult
      ->DBInstanceAutomatedBackup;

# Returns a L<Paws::RDS::StartDBInstanceAutomatedBackupsReplicationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/StartDBInstanceAutomatedBackupsReplication>

=head1 ATTRIBUTES


=head2 BackupRetentionPeriod => Int

The retention period for the replicated automated backups.



=head2 KmsKeyId => Str

The Amazon Web Services KMS key identifier for encryption of the
replicated automated backups. The KMS key ID is the Amazon Resource
Name (ARN) for the KMS encryption key in the destination Amazon Web
Services Region, for example,
C<arn:aws:kms:us-east-1:123456789012:key/AKIAIOSFODNN7EXAMPLE>.



=head2 PreSignedUrl => Str

A URL that contains a Signature Version 4 signed request for the
StartDBInstanceAutomatedBackupsReplication action to be called in the
Amazon Web Services Region of the source DB instance. The presigned URL
must be a valid request for the
StartDBInstanceAutomatedBackupsReplication API action that can be
executed in the Amazon Web Services Region that contains the source DB
instance.



=head2 B<REQUIRED> SourceDBInstanceArn => Str

The Amazon Resource Name (ARN) of the source DB instance for the
replicated automated backups, for example,
C<arn:aws:rds:us-west-2:123456789012:db:mydatabase>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDBInstanceAutomatedBackupsReplication in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

