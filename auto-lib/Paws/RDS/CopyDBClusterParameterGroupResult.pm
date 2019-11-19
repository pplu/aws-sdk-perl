# Generated from callresult_class.tt

package Paws::RDS::CopyDBClusterParameterGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_DBClusterParameterGroup/;
  has DBClusterParameterGroup => (is => 'ro', isa => RDS_DBClusterParameterGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBClusterParameterGroup' => {
                                              'type' => 'RDS_DBClusterParameterGroup',
                                              'class' => 'Paws::RDS::DBClusterParameterGroup'
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

Paws::RDS::CopyDBClusterParameterGroupResult

=head1 ATTRIBUTES


=head2 DBClusterParameterGroup => RDS_DBClusterParameterGroup




=head2 _request_id => Str


=cut

