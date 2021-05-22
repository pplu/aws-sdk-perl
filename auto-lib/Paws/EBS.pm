package Paws::EBS;
  use Moose;
  sub service { 'ebs' }
  sub signing_name { 'ebs' }
  sub version { '2019-11-02' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CompleteSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EBS::CompleteSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSnapshotBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EBS::GetSnapshotBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChangedBlocks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EBS::ListChangedBlocks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSnapshotBlocks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EBS::ListSnapshotBlocks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSnapshotBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EBS::PutSnapshotBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EBS::StartSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CompleteSnapshot GetSnapshotBlock ListChangedBlocks ListSnapshotBlocks PutSnapshotBlock StartSnapshot / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EBS - Perl Interface to AWS Amazon Elastic Block Store

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('EBS');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

You can use the Amazon Elastic Block Store (Amazon EBS) direct APIs to
create EBS snapshots, write data directly to your snapshots, read data
on your snapshots, and identify the differences or changes between two
snapshots. If youE<rsquo>re an independent software vendor (ISV) who
offers backup services for Amazon EBS, the EBS direct APIs make it more
efficient and cost-effective to track incremental changes on your EBS
volumes through snapshots. This can be done without having to create
new volumes from snapshots, and then use Amazon Elastic Compute Cloud
(Amazon EC2) instances to compare the differences.

You can create incremental snapshots directly from data on-premises
into EBS volumes and the cloud to use for quick disaster recovery. With
the ability to write and read snapshots, you can write your on-premises
data to an EBS snapshot during a disaster. Then after recovery, you can
restore it back to AWS or on-premises from the snapshot. You no longer
need to build and maintain complex mechanisms to copy data to and from
Amazon EBS.

This API reference provides detailed information about the actions,
data types, parameters, and errors of the EBS direct APIs. For more
information about the elements that make up the EBS direct APIs, and
examples of how to use them effectively, see Accessing the Contents of
an EBS Snapshot
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html)
in the I<Amazon Elastic Compute Cloud User Guide>. For more information
about the supported AWS Regions, endpoints, and service quotas for the
EBS direct APIs, see Amazon Elastic Block Store Endpoints and Quotas
(https://docs.aws.amazon.com/general/latest/gr/ebs-service.html) in the
I<AWS General Reference>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02>


=head1 METHODS

=head2 CompleteSnapshot

=over

=item ChangedBlocksCount => Int

=item SnapshotId => Str

=item [Checksum => Str]

=item [ChecksumAggregationMethod => Str]

=item [ChecksumAlgorithm => Str]


=back

Each argument is described in detail in: L<Paws::EBS::CompleteSnapshot>

Returns: a L<Paws::EBS::CompleteSnapshotResponse> instance

Seals and completes the snapshot after all of the required blocks of
data have been written to it. Completing the snapshot changes the
status to C<completed>. You cannot write new blocks to a snapshot after
it has been completed.


=head2 GetSnapshotBlock

=over

=item BlockIndex => Int

=item BlockToken => Str

=item SnapshotId => Str


=back

Each argument is described in detail in: L<Paws::EBS::GetSnapshotBlock>

Returns: a L<Paws::EBS::GetSnapshotBlockResponse> instance

Returns the data in a block in an Amazon Elastic Block Store snapshot.


=head2 ListChangedBlocks

=over

=item SecondSnapshotId => Str

=item [FirstSnapshotId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartingBlockIndex => Int]


=back

Each argument is described in detail in: L<Paws::EBS::ListChangedBlocks>

Returns: a L<Paws::EBS::ListChangedBlocksResponse> instance

Returns information about the blocks that are different between two
Amazon Elastic Block Store snapshots of the same volume/snapshot
lineage.


=head2 ListSnapshotBlocks

=over

=item SnapshotId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartingBlockIndex => Int]


=back

Each argument is described in detail in: L<Paws::EBS::ListSnapshotBlocks>

Returns: a L<Paws::EBS::ListSnapshotBlocksResponse> instance

Returns information about the blocks in an Amazon Elastic Block Store
snapshot.


=head2 PutSnapshotBlock

=over

=item BlockData => Str

=item BlockIndex => Int

=item Checksum => Str

=item ChecksumAlgorithm => Str

=item DataLength => Int

=item SnapshotId => Str

=item [Progress => Int]


=back

Each argument is described in detail in: L<Paws::EBS::PutSnapshotBlock>

Returns: a L<Paws::EBS::PutSnapshotBlockResponse> instance

Writes a block of data to a snapshot. If the specified block contains
data, the existing data is overwritten. The target snapshot must be in
the C<pending> state.

Data written to a snapshot must be aligned with 512-byte sectors.


=head2 StartSnapshot

=over

=item VolumeSize => Int

=item [ClientToken => Str]

=item [Description => Str]

=item [Encrypted => Bool]

=item [KmsKeyArn => Str]

=item [ParentSnapshotId => Str]

=item [Tags => ArrayRef[L<Paws::EBS::Tag>]]

=item [Timeout => Int]


=back

Each argument is described in detail in: L<Paws::EBS::StartSnapshot>

Returns: a L<Paws::EBS::StartSnapshotResponse> instance

Creates a new Amazon EBS snapshot. The new snapshot enters the
C<pending> state after the request completes.

After creating the snapshot, use PutSnapshotBlock
(https://docs.aws.amazon.com/ebs/latest/APIReference/API_PutSnapshotBlock.html)
to write blocks of data to the snapshot.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

