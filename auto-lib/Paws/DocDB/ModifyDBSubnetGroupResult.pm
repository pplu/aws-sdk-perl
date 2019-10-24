# Generated from callresult_class.tt

package Paws::DocDB::ModifyDBSubnetGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DocDB::Types qw/DocDB_DBSubnetGroup/;
  has DBSubnetGroup => (is => 'ro', isa => DocDB_DBSubnetGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DBSubnetGroup' => {
                                    'class' => 'Paws::DocDB::DBSubnetGroup',
                                    'type' => 'DocDB_DBSubnetGroup'
                                  }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::ModifyDBSubnetGroupResult

=head1 ATTRIBUTES


=head2 DBSubnetGroup => DocDB_DBSubnetGroup




=head2 _request_id => Str


=cut

