# Generated from json/callresult_class.tt

package Paws::DS::DescribeSnapshotsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DS::Types qw/DS_Snapshot/;
  has NextToken => (is => 'ro', isa => Str);
  has Snapshots => (is => 'ro', isa => ArrayRef[DS_Snapshot]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Snapshots' => {
                                'class' => 'Paws::DS::Snapshot',
                                'type' => 'ArrayRef[DS_Snapshot]'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeSnapshotsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If not null, more results are available. Pass this value in the
I<NextToken> member of a subsequent call to DescribeSnapshots.


=head2 Snapshots => ArrayRef[DS_Snapshot]

The list of Snapshot objects that were retrieved.

It is possible that this list contains less than the number of items
specified in the I<Limit> member of the request. This occurs if there
are less than the requested number of items left to retrieve, or if the
limitations of the operation have been exceeded.


=head2 _request_id => Str


=cut

1;