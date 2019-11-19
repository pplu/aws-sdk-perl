# Generated from callresult_class.tt

package Paws::RDS::ModifyDBSubnetGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_DBSubnetGroup/;
  has DBSubnetGroup => (is => 'ro', isa => RDS_DBSubnetGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBSubnetGroup' => {
                                    'type' => 'RDS_DBSubnetGroup',
                                    'class' => 'Paws::RDS::DBSubnetGroup'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBSubnetGroupResult

=head1 ATTRIBUTES


=head2 DBSubnetGroup => RDS_DBSubnetGroup




=head2 _request_id => Str


=cut

