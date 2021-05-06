
package Paws::RedShift::RestoreTableFromClusterSnapshot;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has NewTableName => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SourceDatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has SourceSchemaName => (is => 'ro', isa => 'Str');
  has SourceTableName => (is => 'ro', isa => 'Str', required => 1);
  has TargetDatabaseName => (is => 'ro', isa => 'Str');
  has TargetSchemaName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreTableFromClusterSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::RestoreTableFromClusterSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreTableFromClusterSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::RestoreTableFromClusterSnapshot - Arguments for method RestoreTableFromClusterSnapshot on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreTableFromClusterSnapshot on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method RestoreTableFromClusterSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreTableFromClusterSnapshot.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $RestoreTableFromClusterSnapshotResult =
      $redshift->RestoreTableFromClusterSnapshot(
      ClusterIdentifier  => 'MyString',
      NewTableName       => 'MyString',
      SnapshotIdentifier => 'MyString',
      SourceDatabaseName => 'MyString',
      SourceTableName    => 'MyString',
      SourceSchemaName   => 'MyString',    # OPTIONAL
      TargetDatabaseName => 'MyString',    # OPTIONAL
      TargetSchemaName   => 'MyString',    # OPTIONAL
      );

    # Results:
    my $TableRestoreStatus =
      $RestoreTableFromClusterSnapshotResult->TableRestoreStatus;

    # Returns a L<Paws::RedShift::RestoreTableFromClusterSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/RestoreTableFromClusterSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterIdentifier => Str

The identifier of the Amazon Redshift cluster to restore the table to.



=head2 B<REQUIRED> NewTableName => Str

The name of the table to create as a result of the current request.



=head2 B<REQUIRED> SnapshotIdentifier => Str

The identifier of the snapshot to restore the table from. This snapshot
must have been created from the Amazon Redshift cluster specified by
the C<ClusterIdentifier> parameter.



=head2 B<REQUIRED> SourceDatabaseName => Str

The name of the source database that contains the table to restore
from.



=head2 SourceSchemaName => Str

The name of the source schema that contains the table to restore from.
If you do not specify a C<SourceSchemaName> value, the default is
C<public>.



=head2 B<REQUIRED> SourceTableName => Str

The name of the source table to restore from.



=head2 TargetDatabaseName => Str

The name of the database to restore the table to.



=head2 TargetSchemaName => Str

The name of the schema to restore the table to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreTableFromClusterSnapshot in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

