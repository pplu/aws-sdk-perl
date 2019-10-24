# Generated from callresult_class.tt

package Paws::RedShift::ClustersMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_Cluster/;
  has Clusters => (is => 'ro', isa => ArrayRef[RedShift_Cluster]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Clusters' => {
                               'class' => 'Paws::RedShift::Cluster',
                               'type' => 'ArrayRef[RedShift_Cluster]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'Clusters' => 'Cluster'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ClustersMessage

=head1 ATTRIBUTES


=head2 Clusters => ArrayRef[RedShift_Cluster]

A list of C<Cluster> objects, where each object describes one cluster.


=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
marker value in the C<Marker> parameter and retrying the command. If
the C<Marker> field is empty, all response records have been retrieved
for the request.


=head2 _request_id => Str


=cut

