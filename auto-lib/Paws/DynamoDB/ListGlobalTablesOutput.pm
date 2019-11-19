# Generated from json/callresult_class.tt

package Paws::DynamoDB::ListGlobalTablesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DynamoDB::Types qw/DynamoDB_GlobalTable/;
  has GlobalTables => (is => 'ro', isa => ArrayRef[DynamoDB_GlobalTable]);
  has LastEvaluatedGlobalTableName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GlobalTables' => {
                                   'type' => 'ArrayRef[DynamoDB_GlobalTable]',
                                   'class' => 'Paws::DynamoDB::GlobalTable'
                                 },
               'LastEvaluatedGlobalTableName' => {
                                                   'type' => 'Str'
                                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ListGlobalTablesOutput

=head1 ATTRIBUTES


=head2 GlobalTables => ArrayRef[DynamoDB_GlobalTable]

List of global table names.


=head2 LastEvaluatedGlobalTableName => Str

Last evaluated global table name.


=head2 _request_id => Str


=cut

1;