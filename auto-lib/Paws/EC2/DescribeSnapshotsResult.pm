
package Paws::EC2::DescribeSnapshotsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_Snapshot/;
  has NextToken => (is => 'ro', isa => Str);
  has Snapshots => (is => 'ro', isa => ArrayRef[EC2_Snapshot]);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Snapshots' => {
                                'class' => 'Paws::EC2::Snapshot',
                                'type' => 'ArrayRef[EC2_Snapshot]'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Snapshots' => 'snapshotSet',
                       'NextToken' => 'nextToken'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSnapshotsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<NextToken> value to include in a future C<DescribeSnapshots>
request. When the results of a C<DescribeSnapshots> request exceed
C<MaxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 Snapshots => ArrayRef[EC2_Snapshot]

Information about the snapshots.


=head2 _request_id => Str


=cut

