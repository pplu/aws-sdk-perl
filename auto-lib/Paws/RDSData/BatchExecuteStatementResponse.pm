
package Paws::RDSData::BatchExecuteStatementResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDSData::Types qw/RDSData_UpdateResult/;
  has UpdateResults => (is => 'ro', isa => ArrayRef[RDSData_UpdateResult]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'UpdateResults' => 'updateResults'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UpdateResults' => {
                                    'type' => 'ArrayRef[RDSData_UpdateResult]',
                                    'class' => 'Paws::RDSData::UpdateResult'
                                  }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::BatchExecuteStatementResponse

=head1 ATTRIBUTES


=head2 UpdateResults => ArrayRef[RDSData_UpdateResult]

The execution results of each batch entry.


=head2 _request_id => Str


=cut

