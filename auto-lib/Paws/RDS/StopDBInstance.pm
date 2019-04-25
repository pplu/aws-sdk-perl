
package Paws::RDS::StopDBInstance;
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopDBInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::StopDBInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'StopDBInstanceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::StopDBInstance - Arguments for method StopDBInstance on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopDBInstance on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method StopDBInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopDBInstance.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $StopDBInstanceResult = $rds->StopDBInstance(
      DBInstanceIdentifier => 'MyString',
      DBSnapshotIdentifier => 'MyString',    # OPTIONAL
    );

    # Results:
    my $DBInstance = $StopDBInstanceResult->DBInstance;

    # Returns a L<Paws::RDS::StopDBInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/StopDBInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBInstanceIdentifier => Str

The user-supplied instance identifier.



=head2 DBSnapshotIdentifier => Str

The user-supplied instance identifier of the DB Snapshot created
immediately before the DB instance is stopped.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopDBInstance in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

