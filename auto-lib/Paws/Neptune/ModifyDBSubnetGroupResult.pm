# Generated from callresult_class.tt

package Paws::Neptune::ModifyDBSubnetGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Neptune::Types qw/Neptune_DBSubnetGroup/;
  has DBSubnetGroup => (is => 'ro', isa => Neptune_DBSubnetGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DBSubnetGroup' => {
                                    'class' => 'Paws::Neptune::DBSubnetGroup',
                                    'type' => 'Neptune_DBSubnetGroup'
                                  }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::ModifyDBSubnetGroupResult

=head1 ATTRIBUTES


=head2 DBSubnetGroup => Neptune_DBSubnetGroup




=head2 _request_id => Str


=cut

