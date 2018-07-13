package Paws::DMS::TableStatistics;
  use Moose;
  has Ddls => (is => 'ro', isa => 'Int');
  has Deletes => (is => 'ro', isa => 'Int');
  has FullLoadCondtnlChkFailedRows => (is => 'ro', isa => 'Int');
  has FullLoadErrorRows => (is => 'ro', isa => 'Int');
  has FullLoadRows => (is => 'ro', isa => 'Int');
  has Inserts => (is => 'ro', isa => 'Int');
  has LastUpdateTime => (is => 'ro', isa => 'Str');
  has SchemaName => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str');
  has TableState => (is => 'ro', isa => 'Str');
  has Updates => (is => 'ro', isa => 'Int');
  has ValidationFailedRecords => (is => 'ro', isa => 'Int');
  has ValidationPendingRecords => (is => 'ro', isa => 'Int');
  has ValidationState => (is => 'ro', isa => 'Str');
  has ValidationStateDetails => (is => 'ro', isa => 'Str');
  has ValidationSuspendedRecords => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::TableStatistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::TableStatistics object:

  $service_obj->Method(Att1 => { Ddls => $value, ..., ValidationSuspendedRecords => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::TableStatistics object:

  $result = $service_obj->Method(...);
  $result->Att1->Ddls

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Ddls => Int

  The Data Definition Language (DDL) used to build and modify the
structure of your tables.


=head2 Deletes => Int

  The number of delete actions performed on a table.


=head2 FullLoadCondtnlChkFailedRows => Int

  The number of rows that failed conditional checks during the Full Load
operation (valid only for DynamoDB as a target migrations).


=head2 FullLoadErrorRows => Int

  The number of rows that failed to load during the Full Load operation
(valid only for DynamoDB as a target migrations).


=head2 FullLoadRows => Int

  The number of rows added during the Full Load operation.


=head2 Inserts => Int

  The number of insert actions performed on a table.


=head2 LastUpdateTime => Str

  The last time the table was updated.


=head2 SchemaName => Str

  The schema name.


=head2 TableName => Str

  The name of the table.


=head2 TableState => Str

  The state of the tables described.

Valid states: Table does not exist | Before load | Full load | Table
completed | Table cancelled | Table error | Table all | Table updates |
Table is being reloaded


=head2 Updates => Int

  The number of update actions performed on a table.


=head2 ValidationFailedRecords => Int

  The number of records that failed validation.


=head2 ValidationPendingRecords => Int

  The number of records that have yet to be validated.


=head2 ValidationState => Str

  The validation state of the table.

The parameter can have the following values

=over

=item *

Not enabledE<mdash>Validation is not enabled for the table in the
migration task.

=item *

Pending recordsE<mdash>Some records in the table are waiting for
validation.

=item *

Mismatched recordsE<mdash>Some records in the table do not match
between the source and target.

=item *

Suspended recordsE<mdash>Some records in the table could not be
validated.

=item *

No primary keyE<mdash>The table could not be validated because it had
no primary key.

=item *

Table errorE<mdash>The table was not validated because it was in an
error state and some data was not migrated.

=item *

ValidatedE<mdash>All rows in the table were validated. If the table is
updated, the status can change from Validated.

=item *

ErrorE<mdash>The table could not be validated because of an unexpected
error.

=back



=head2 ValidationStateDetails => Str

  Additional details about the state of validation.


=head2 ValidationSuspendedRecords => Int

  The number of records that could not be validated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

