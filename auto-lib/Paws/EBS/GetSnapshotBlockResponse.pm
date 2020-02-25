
package Paws::EBS::GetSnapshotBlockResponse;
  use Moose;
  has BlockData => (is => 'ro', isa => 'Str');
  has Checksum => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-Checksum');
  has ChecksumAlgorithm => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-Checksum-Algorithm');
  has DataLength => (is => 'ro', isa => 'Int', traits => ['ParamInHeader'], header_name => 'x-amz-Data-Length');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'BlockData');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EBS::GetSnapshotBlockResponse

=head1 ATTRIBUTES


=head2 BlockData => Str

The data content of the block.


=head2 Checksum => Str

The checksum generated for the block, which is Base64 encoded.


=head2 ChecksumAlgorithm => Str

The algorithm used to generate the checksum for the block, such as
SHA256.

Valid values are: C<"SHA256">
=head2 DataLength => Int

The size of the data in the block.


=head2 _request_id => Str


=cut

