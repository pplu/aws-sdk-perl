# Generated from callresult_class.tt

package Paws::Neptune::CopyDBClusterParameterGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Neptune::Types qw/Neptune_DBClusterParameterGroup/;
  has DBClusterParameterGroup => (is => 'ro', isa => Neptune_DBClusterParameterGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBClusterParameterGroup' => {
                                              'class' => 'Paws::Neptune::DBClusterParameterGroup',
                                              'type' => 'Neptune_DBClusterParameterGroup'
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

Paws::Neptune::CopyDBClusterParameterGroupResult

=head1 ATTRIBUTES


=head2 DBClusterParameterGroup => Neptune_DBClusterParameterGroup




=head2 _request_id => Str


=cut

