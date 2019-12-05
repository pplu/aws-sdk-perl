
package Paws::EBS::ListSnapshotBlocks;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'pageToken');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'snapshotId', required => 1);
  has StartingBlockIndex => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'startingBlockIndex');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSnapshotBlocks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/snapshots/{snapshotId}/blocks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EBS::ListSnapshotBlocksResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EBS::ListSnapshotBlocks - Arguments for method ListSnapshotBlocks on L<Paws::EBS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSnapshotBlocks on the
L<Amazon Elastic Block Store|Paws::EBS> service. Use the attributes of this class
as arguments to method ListSnapshotBlocks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSnapshotBlocks.

=head1 SYNOPSIS

    my $ebs = Paws->service('EBS');
    my $ListSnapshotBlocksResponse = $ebs->ListSnapshotBlocks(
      SnapshotId         => 'MySnapshotId',
      MaxResults         => 1,                # OPTIONAL
      NextToken          => 'MyPageToken',    # OPTIONAL
      StartingBlockIndex => 1,                # OPTIONAL
    );

    # Results:
    my $BlockSize  = $ListSnapshotBlocksResponse->BlockSize;
    my $Blocks     = $ListSnapshotBlocksResponse->Blocks;
    my $ExpiryTime = $ListSnapshotBlocksResponse->ExpiryTime;
    my $NextToken  = $ListSnapshotBlocksResponse->NextToken;
    my $VolumeSize = $ListSnapshotBlocksResponse->VolumeSize;

    # Returns a L<Paws::EBS::ListSnapshotBlocksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ebs/ListSnapshotBlocks>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The number of results to return.



=head2 NextToken => Str

The token to request the next page of results.



=head2 B<REQUIRED> SnapshotId => Str

The ID of the snapshot from which to get block indexes and block
tokens.



=head2 StartingBlockIndex => Int

The block index from which the list should start. The list in the
response will start from this block index or the next valid block index
in the snapshot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSnapshotBlocks in L<Paws::EBS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

