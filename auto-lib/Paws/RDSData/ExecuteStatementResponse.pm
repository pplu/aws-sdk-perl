
package Paws::RDSData::ExecuteStatementResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::RDSData::Types qw/RDSData_Field RDSData_ColumnMetadata/;
  has ColumnMetadata => (is => 'ro', isa => ArrayRef[RDSData_ColumnMetadata]);
  has GeneratedFields => (is => 'ro', isa => ArrayRef[RDSData_Field]);
  has NumberOfRecordsUpdated => (is => 'ro', isa => Int);
  has Records => (is => 'ro', isa => ArrayRef[ArrayRef[RDSData_Field]]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NumberOfRecordsUpdated' => {
                                             'type' => 'Int'
                                           },
               'GeneratedFields' => {
                                      'class' => 'Paws::RDSData::Field',
                                      'type' => 'ArrayRef[RDSData_Field]'
                                    },
               'Records' => {
                              'class' => 'Paws::RDSData::Field',
                              'type' => 'ArrayRef[ArrayRef[RDSData_Field]]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ColumnMetadata' => {
                                     'type' => 'ArrayRef[RDSData_ColumnMetadata]',
                                     'class' => 'Paws::RDSData::ColumnMetadata'
                                   }
             },
  'NameInRequest' => {
                       'GeneratedFields' => 'generatedFields',
                       'Records' => 'records',
                       'NumberOfRecordsUpdated' => 'numberOfRecordsUpdated',
                       'ColumnMetadata' => 'columnMetadata'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::ExecuteStatementResponse

=head1 ATTRIBUTES


=head2 ColumnMetadata => ArrayRef[RDSData_ColumnMetadata]

Metadata for the columns included in the results.


=head2 GeneratedFields => ArrayRef[RDSData_Field]

Values for fields generated during the request.

 <note> <p>The <code>generatedFields</code> data isn't supported by Aurora PostgreSQL. To get the values of generated fields, use the <code>RETURNING</code> clause. For more information, see <a href="https://www.postgresql.org/docs/10/dml-returning.html">Returning Data From Modified Rows</a> in the PostgreSQL documentation.</p> </note>


=head2 NumberOfRecordsUpdated => Int

The number of records updated by the request.


=head2 Records => ArrayRef[ArrayRef[RDSData_Field]]

The records returned by the SQL statement.


=head2 _request_id => Str


=cut

