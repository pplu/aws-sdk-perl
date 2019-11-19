# Generated from callresult_class.tt

package Paws::RedShift::SnapshotCopyGrantMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_SnapshotCopyGrant/;
  has Marker => (is => 'ro', isa => Str);
  has SnapshotCopyGrants => (is => 'ro', isa => ArrayRef[RedShift_SnapshotCopyGrant]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SnapshotCopyGrants' => {
                                         'class' => 'Paws::RedShift::SnapshotCopyGrant',
                                         'type' => 'ArrayRef[RedShift_SnapshotCopyGrant]'
                                       }
             },
  'NameInRequest' => {
                       'SnapshotCopyGrants' => 'SnapshotCopyGrant'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::SnapshotCopyGrantMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional parameter that specifies the starting point to return a set
of response records. When the results of a C<DescribeSnapshotCopyGrant>
request exceed the value specified in C<MaxRecords>, AWS returns a
value in the C<Marker> field of the response. You can retrieve the next
set of response records by providing the returned marker value in the
C<Marker> parameter and retrying the request.

Constraints: You can specify either the B<SnapshotCopyGrantName>
parameter or the B<Marker> parameter, but not both.


=head2 SnapshotCopyGrants => ArrayRef[RedShift_SnapshotCopyGrant]

The list of C<SnapshotCopyGrant> objects.


=head2 _request_id => Str


=cut

