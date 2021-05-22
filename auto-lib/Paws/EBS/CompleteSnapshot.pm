
package Paws::EBS::CompleteSnapshot;
  use Moose;
  has ChangedBlocksCount => (is => 'ro', isa => 'Int', traits => ['ParamInHeader'], header_name => 'x-amz-ChangedBlocksCount', required => 1);
  has Checksum => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-Checksum');
  has ChecksumAggregationMethod => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-Checksum-Aggregation-Method');
  has ChecksumAlgorithm => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-Checksum-Algorithm');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'snapshotId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CompleteSnapshot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/snapshots/completion/{snapshotId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EBS::CompleteSnapshotResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EBS::CompleteSnapshot - Arguments for method CompleteSnapshot on L<Paws::EBS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CompleteSnapshot on the
L<Amazon Elastic Block Store|Paws::EBS> service. Use the attributes of this class
as arguments to method CompleteSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CompleteSnapshot.

=head1 SYNOPSIS

    my $ebs = Paws->service('EBS');
    my $CompleteSnapshotResponse = $ebs->CompleteSnapshot(
      ChangedBlocksCount        => 1,
      SnapshotId                => 'MySnapshotId',
      Checksum                  => 'MyChecksum',     # OPTIONAL
      ChecksumAggregationMethod => 'LINEAR',         # OPTIONAL
      ChecksumAlgorithm         => 'SHA256',         # OPTIONAL
    );

    # Results:
    my $Status = $CompleteSnapshotResponse->Status;

    # Returns a L<Paws::EBS::CompleteSnapshotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ebs/CompleteSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangedBlocksCount => Int

The number of blocks that were written to the snapshot.



=head2 Checksum => Str

An aggregated Base-64 SHA256 checksum based on the checksums of each
written block.

To generate the aggregated checksum using the linear aggregation
method, arrange the checksums for each written block in ascending order
of their block index, concatenate them to form a single string, and
then generate the checksum on the entire string using the SHA256
algorithm.



=head2 ChecksumAggregationMethod => Str

The aggregation method used to generate the checksum. Currently, the
only supported aggregation method is C<LINEAR>.

Valid values are: C<"LINEAR">

=head2 ChecksumAlgorithm => Str

The algorithm used to generate the checksum. Currently, the only
supported algorithm is C<SHA256>.

Valid values are: C<"SHA256">

=head2 B<REQUIRED> SnapshotId => Str

The ID of the snapshot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CompleteSnapshot in L<Paws::EBS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

