
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
               'GeneratedFields' => {
                                      'class' => 'Paws::RDSData::Field',
                                      'type' => 'ArrayRef[RDSData_Field]'
                                    },
               'ColumnMetadata' => {
                                     'class' => 'Paws::RDSData::ColumnMetadata',
                                     'type' => 'ArrayRef[RDSData_ColumnMetadata]'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NumberOfRecordsUpdated' => {
                                             'type' => 'Int'
                                           },
               'Records' => {
                              'class' => 'Paws::RDSData::Field',
                              'type' => 'ArrayRef[ArrayRef[RDSData_Field]]'
                            }
             },
  'NameInRequest' => {
                       'GeneratedFields' => 'generatedFields',
                       'ColumnMetadata' => 'columnMetadata',
                       'NumberOfRecordsUpdated' => 'numberOfRecordsUpdated',
                       'Records' => 'records'
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


=head2 NumberOfRecordsUpdated => Int

The number of records updated by the request.


=head2 Records => ArrayRef[ArrayRef[RDSData_Field]]

The records returned by the SQL statement.


=head2 _request_id => Str


=cut

