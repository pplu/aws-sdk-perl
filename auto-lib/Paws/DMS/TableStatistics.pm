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

  $service_obj->Method(Att1 => { Ddls => $value, ..., Updates => $value  });

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



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

