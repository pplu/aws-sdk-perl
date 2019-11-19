# Generated from callresult_class.tt

package Paws::RDS::DBClusterBacktrackMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_DBClusterBacktrack/;
  has DBClusterBacktracks => (is => 'ro', isa => ArrayRef[RDS_DBClusterBacktrack]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DBClusterBacktracks' => {
                                          'class' => 'Paws::RDS::DBClusterBacktrack',
                                          'type' => 'ArrayRef[RDS_DBClusterBacktrack]'
                                        },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'DBClusterBacktracks' => 'DBClusterBacktrack'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBClusterBacktrackMessage

=head1 ATTRIBUTES


=head2 DBClusterBacktracks => ArrayRef[RDS_DBClusterBacktrack]

Contains a list of backtracks for the user.


=head2 Marker => Str

A pagination token that can be used in a subsequent
C<DescribeDBClusterBacktracks> request.


=head2 _request_id => Str


=cut

