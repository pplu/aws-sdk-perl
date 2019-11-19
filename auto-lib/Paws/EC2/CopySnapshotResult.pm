
package Paws::EC2::CopySnapshotResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_Tag/;
  has SnapshotId => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'ArrayRef[EC2_Tag]',
                           'class' => 'Paws::EC2::Tag'
                         },
               'SnapshotId' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'SnapshotId' => 'snapshotId',
                       'Tags' => 'tagSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CopySnapshotResult

=head1 ATTRIBUTES


=head2 SnapshotId => Str

The ID of the new snapshot.


=head2 Tags => ArrayRef[EC2_Tag]




=head2 _request_id => Str


=cut

