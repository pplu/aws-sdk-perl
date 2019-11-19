
package Paws::RDSData::ExecuteSqlResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDSData::Types qw/RDSData_SqlStatementResult/;
  has SqlStatementResults => (is => 'ro', isa => ArrayRef[RDSData_SqlStatementResult]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SqlStatementResults' => {
                                          'type' => 'ArrayRef[RDSData_SqlStatementResult]',
                                          'class' => 'Paws::RDSData::SqlStatementResult'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'SqlStatementResults' => 'sqlStatementResults'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::ExecuteSqlResponse

=head1 ATTRIBUTES


=head2 SqlStatementResults => ArrayRef[RDSData_SqlStatementResult]

The results of the SQL statement or statements.


=head2 _request_id => Str


=cut

