
package Paws::RDS::StopDBInstanceAutomatedBackupsReplication;
  use Moose;
  has SourceDBInstanceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopDBInstanceAutomatedBackupsReplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::StopDBInstanceAutomatedBackupsReplicationResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'StopDBInstanceAutomatedBackupsReplicationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::StopDBInstanceAutomatedBackupsReplication - Arguments for method StopDBInstanceAutomatedBackupsReplication on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopDBInstanceAutomatedBackupsReplication on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method StopDBInstanceAutomatedBackupsReplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopDBInstanceAutomatedBackupsReplication.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $StopDBInstanceAutomatedBackupsReplicationResult =
      $rds->StopDBInstanceAutomatedBackupsReplication(
      SourceDBInstanceArn => 'MyString',

      );

    # Results:
    my $DBInstanceAutomatedBackup =
      $StopDBInstanceAutomatedBackupsReplicationResult
      ->DBInstanceAutomatedBackup;

# Returns a L<Paws::RDS::StopDBInstanceAutomatedBackupsReplicationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/StopDBInstanceAutomatedBackupsReplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceDBInstanceArn => Str

The Amazon Resource Name (ARN) of the source DB instance for which to
stop replicating automated backups, for example,
C<arn:aws:rds:us-west-2:123456789012:db:mydatabase>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopDBInstanceAutomatedBackupsReplication in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

