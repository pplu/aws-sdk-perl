# Generated from callresult_class.tt

package Paws::RedShift::ClusterDbRevisionsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_ClusterDbRevision/;
  has ClusterDbRevisions => (is => 'ro', isa => ArrayRef[RedShift_ClusterDbRevision]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ClusterDbRevisions' => {
                                         'class' => 'Paws::RedShift::ClusterDbRevision',
                                         'type' => 'ArrayRef[RedShift_ClusterDbRevision]'
                                       },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'ClusterDbRevisions' => 'ClusterDbRevision'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ClusterDbRevisionsMessage

=head1 ATTRIBUTES


=head2 ClusterDbRevisions => ArrayRef[RedShift_ClusterDbRevision]

A list of revisions.


=head2 Marker => Str

A string representing the starting point for the next set of revisions.
If a value is returned in a response, you can retrieve the next set of
revisions by providing the value in the C<marker> parameter and
retrying the command. If the C<marker> field is empty, all revisions
have already been returned.


=head2 _request_id => Str


=cut

