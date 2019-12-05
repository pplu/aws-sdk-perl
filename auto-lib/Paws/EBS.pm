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
  


  sub operations { qw/GetSnapshotBlock ListChangedBlocks ListSnapshotBlocks / }

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

You can use the Amazon Elastic Block Store (EBS) direct APIs to
directly read the data on your EBS snapshots, and identify the
difference between two snapshots. You can view the details of blocks in
an EBS snapshot, compare the block difference between two snapshots,
and directly access the data in a snapshot. If youE<rsquo>re an
independent software vendor (ISV) who offers backup services for EBS,
the EBS direct APIs makes it easier and more cost-effective to track
incremental changes on your EBS volumes via EBS snapshots. This can be
done without having to create new volumes from EBS snapshots, and then
use EC2 instances to compare the differences.

This API reference provides detailed information about the actions,
data types, parameters, and errors of the EBS direct APIs. For more
information about the elements that make up the EBS direct APIs, and
examples of how to use them effectively, see Accessing the Contents of
an EBS Snapshot
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html).
For more information about how to use the EBS direct APIs, see the EBS
direct APIs User Guide
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshots.html).
To view the currently supported AWS Regions and endpoints for the EBS
direct APIs, see AWS Service Endpoints
(https://docs.aws.amazon.com/general/latest/gr/rande.html#ebs_region)
in the I<AWS General Reference>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02>


=head1 METHODS

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

Returns the block indexes and block tokens for blocks that are
different between two Amazon Elastic Block Store snapshots of the same
volume/snapshot lineage.


=head2 ListSnapshotBlocks

=over

=item SnapshotId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartingBlockIndex => Int]


=back

Each argument is described in detail in: L<Paws::EBS::ListSnapshotBlocks>

Returns: a L<Paws::EBS::ListSnapshotBlocksResponse> instance

Returns the block indexes and block tokens for blocks in an Amazon
Elastic Block Store snapshot.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

