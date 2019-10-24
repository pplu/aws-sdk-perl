# Generated from callresult_class.tt

package Paws::RDS::CreateDBClusterParameterGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_DBClusterParameterGroup/;
  has DBClusterParameterGroup => (is => 'ro', isa => RDS_DBClusterParameterGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DBClusterParameterGroup' => {
                                              'class' => 'Paws::RDS::DBClusterParameterGroup',
                                              'type' => 'RDS_DBClusterParameterGroup'
                                            }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBClusterParameterGroupResult

=head1 ATTRIBUTES


=head2 DBClusterParameterGroup => RDS_DBClusterParameterGroup




=head2 _request_id => Str


=cut

