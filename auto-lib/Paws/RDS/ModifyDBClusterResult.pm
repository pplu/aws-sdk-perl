# Generated from callresult_class.tt

package Paws::RDS::ModifyDBClusterResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_DBCluster/;
  has DBCluster => (is => 'ro', isa => RDS_DBCluster);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DBCluster' => {
                                'type' => 'RDS_DBCluster',
                                'class' => 'Paws::RDS::DBCluster'
                              }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBClusterResult

=head1 ATTRIBUTES


=head2 DBCluster => RDS_DBCluster




=head2 _request_id => Str


=cut

