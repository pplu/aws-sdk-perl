
package Paws::EBS::PutSnapshotBlockResponse;
  use Moose;
  has Checksum => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-Checksum');
  has ChecksumAlgorithm => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-Checksum-Algorithm');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EBS::PutSnapshotBlockResponse

=head1 ATTRIBUTES


=head2 Checksum => Str

The SHA256 checksum generated for the block data by Amazon EBS.


=head2 ChecksumAlgorithm => Str

The algorithm used by Amazon EBS to generate the checksum.

Valid values are: C<"SHA256">
=head2 _request_id => Str


=cut

