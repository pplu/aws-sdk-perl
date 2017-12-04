package Paws::RedShift::TableRestoreStatus;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has NewTableName => (is => 'ro', isa => 'Str');
  has ProgressInMegaBytes => (is => 'ro', isa => 'Int');
  has RequestTime => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SourceDatabaseName => (is => 'ro', isa => 'Str');
  has SourceSchemaName => (is => 'ro', isa => 'Str');
  has SourceTableName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TableRestoreRequestId => (is => 'ro', isa => 'Str');
  has TargetDatabaseName => (is => 'ro', isa => 'Str');
  has TargetSchemaName => (is => 'ro', isa => 'Str');
  has TotalDataInMegaBytes => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::TableRestoreStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::TableRestoreStatus object:

  $service_obj->Method(Att1 => { ClusterIdentifier => $value, ..., TotalDataInMegaBytes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::TableRestoreStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterIdentifier

=head1 DESCRIPTION

Describes the status of a RestoreTableFromClusterSnapshot operation.

=head1 ATTRIBUTES


=head2 ClusterIdentifier => Str

  The identifier of the Amazon Redshift cluster that the table is being
restored to.


=head2 Message => Str

  A description of the status of the table restore request. Status values
include C<SUCCEEDED>, C<FAILED>, C<CANCELED>, C<PENDING>,
C<IN_PROGRESS>.


=head2 NewTableName => Str

  The name of the table to create as a result of the table restore
request.


=head2 ProgressInMegaBytes => Int

  The amount of data restored to the new table so far, in megabytes (MB).


=head2 RequestTime => Str

  The time that the table restore request was made, in Universal
Coordinated Time (UTC).


=head2 SnapshotIdentifier => Str

  The identifier of the snapshot that the table is being restored from.


=head2 SourceDatabaseName => Str

  The name of the source database that contains the table being restored.


=head2 SourceSchemaName => Str

  The name of the source schema that contains the table being restored.


=head2 SourceTableName => Str

  The name of the source table being restored.


=head2 Status => Str

  A value that describes the current state of the table restore request.

Valid Values: C<SUCCEEDED>, C<FAILED>, C<CANCELED>, C<PENDING>,
C<IN_PROGRESS>


=head2 TableRestoreRequestId => Str

  The unique identifier for the table restore request.


=head2 TargetDatabaseName => Str

  The name of the database to restore the table to.


=head2 TargetSchemaName => Str

  The name of the schema to restore the table to.


=head2 TotalDataInMegaBytes => Int

  The total amount of data to restore to the new table, in megabytes
(MB).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

