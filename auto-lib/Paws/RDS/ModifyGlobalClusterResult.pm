# Generated from callresult_class.tt

package Paws::RDS::ModifyGlobalClusterResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_GlobalCluster/;
  has GlobalCluster => (is => 'ro', isa => RDS_GlobalCluster);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GlobalCluster' => {
                                    'type' => 'RDS_GlobalCluster',
                                    'class' => 'Paws::RDS::GlobalCluster'
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

Paws::RDS::ModifyGlobalClusterResult

=head1 ATTRIBUTES


=head2 GlobalCluster => RDS_GlobalCluster




=head2 _request_id => Str


=cut

