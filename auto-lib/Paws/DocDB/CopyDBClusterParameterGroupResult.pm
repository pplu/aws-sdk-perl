# Generated from callresult_class.tt

package Paws::DocDB::CopyDBClusterParameterGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DocDB::Types qw/DocDB_DBClusterParameterGroup/;
  has DBClusterParameterGroup => (is => 'ro', isa => DocDB_DBClusterParameterGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DBClusterParameterGroup' => {
                                              'class' => 'Paws::DocDB::DBClusterParameterGroup',
                                              'type' => 'DocDB_DBClusterParameterGroup'
                                            }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::CopyDBClusterParameterGroupResult

=head1 ATTRIBUTES


=head2 DBClusterParameterGroup => DocDB_DBClusterParameterGroup




=head2 _request_id => Str


=cut

