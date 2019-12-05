
package Paws::EBS::ListChangedBlocks;
  use Moose;
  has FirstSnapshotId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'firstSnapshotId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'pageToken');
  has SecondSnapshotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'secondSnapshotId', required => 1);
  has StartingBlockIndex => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'startingBlockIndex');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListChangedBlocks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/snapshots/{secondSnapshotId}/changedblocks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EBS::ListChangedBlocksResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EBS::ListChangedBlocks - Arguments for method ListChangedBlocks on L<Paws::EBS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListChangedBlocks on the
L<Amazon Elastic Block Store|Paws::EBS> service. Use the attributes of this class
as arguments to method ListChangedBlocks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListChangedBlocks.

=head1 SYNOPSIS

    my $ebs = Paws->service('EBS');
    my $ListChangedBlocksResponse = $ebs->ListChangedBlocks(
      SecondSnapshotId   => 'MySnapshotId',
      FirstSnapshotId    => 'MySnapshotId',    # OPTIONAL
      MaxResults         => 1,                 # OPTIONAL
      NextToken          => 'MyPageToken',     # OPTIONAL
      StartingBlockIndex => 1,                 # OPTIONAL
    );

    # Results:
    my $BlockSize     = $ListChangedBlocksResponse->BlockSize;
    my $ChangedBlocks = $ListChangedBlocksResponse->ChangedBlocks;
    my $ExpiryTime    = $ListChangedBlocksResponse->ExpiryTime;
    my $NextToken     = $ListChangedBlocksResponse->NextToken;
    my $VolumeSize    = $ListChangedBlocksResponse->VolumeSize;

    # Returns a L<Paws::EBS::ListChangedBlocksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ebs/ListChangedBlocks>

=head1 ATTRIBUTES


=head2 FirstSnapshotId => Str

The ID of the first snapshot to use for the comparison.



=head2 MaxResults => Int

The number of results to return.



=head2 NextToken => Str

The token to request the next page of results.



=head2 B<REQUIRED> SecondSnapshotId => Str

The ID of the second snapshot to use for the comparison.



=head2 StartingBlockIndex => Int

The block index from which the comparison should start.

The list in the response will start from this block index or the next
valid block index in the snapshots.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListChangedBlocks in L<Paws::EBS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

