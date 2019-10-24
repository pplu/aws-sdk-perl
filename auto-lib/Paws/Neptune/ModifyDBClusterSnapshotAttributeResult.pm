# Generated from callresult_class.tt

package Paws::Neptune::ModifyDBClusterSnapshotAttributeResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Neptune::Types qw/Neptune_DBClusterSnapshotAttributesResult/;
  has DBClusterSnapshotAttributesResult => (is => 'ro', isa => Neptune_DBClusterSnapshotAttributesResult);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBClusterSnapshotAttributesResult' => {
                                                        'class' => 'Paws::Neptune::DBClusterSnapshotAttributesResult',
                                                        'type' => 'Neptune_DBClusterSnapshotAttributesResult'
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

Paws::Neptune::ModifyDBClusterSnapshotAttributeResult

=head1 ATTRIBUTES


=head2 DBClusterSnapshotAttributesResult => Neptune_DBClusterSnapshotAttributesResult




=head2 _request_id => Str


=cut

