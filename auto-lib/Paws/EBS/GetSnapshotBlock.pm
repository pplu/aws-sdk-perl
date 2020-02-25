
package Paws::EBS::GetSnapshotBlock;
  use Moose;
  has BlockIndex => (is => 'ro', isa => 'Int', traits => ['ParamInURI'], uri_name => 'blockIndex', required => 1);
  has BlockToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'blockToken', required => 1);
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'snapshotId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSnapshotBlock');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/snapshots/{snapshotId}/blocks/{blockIndex}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EBS::GetSnapshotBlockResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EBS::GetSnapshotBlock - Arguments for method GetSnapshotBlock on L<Paws::EBS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSnapshotBlock on the
L<Amazon Elastic Block Store|Paws::EBS> service. Use the attributes of this class
as arguments to method GetSnapshotBlock.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSnapshotBlock.

=head1 SYNOPSIS

    my $ebs = Paws->service('EBS');
    my $GetSnapshotBlockResponse = $ebs->GetSnapshotBlock(
      BlockIndex => 1,
      BlockToken => 'MyBlockToken',
      SnapshotId => 'MySnapshotId',

    );

    # Results:
    my $BlockData         = $GetSnapshotBlockResponse->BlockData;
    my $Checksum          = $GetSnapshotBlockResponse->Checksum;
    my $ChecksumAlgorithm = $GetSnapshotBlockResponse->ChecksumAlgorithm;
    my $DataLength        = $GetSnapshotBlockResponse->DataLength;

    # Returns a L<Paws::EBS::GetSnapshotBlockResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ebs/GetSnapshotBlock>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlockIndex => Int

The block index of the block from which to get data.

Obtain the C<BlockIndex> by running the C<ListChangedBlocks> or
C<ListSnapshotBlocks> operations.



=head2 B<REQUIRED> BlockToken => Str

The block token of the block from which to get data.

Obtain the C<BlockToken> by running the C<ListChangedBlocks> or
C<ListSnapshotBlocks> operations.



=head2 B<REQUIRED> SnapshotId => Str

The ID of the snapshot containing the block from which to get data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSnapshotBlock in L<Paws::EBS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

