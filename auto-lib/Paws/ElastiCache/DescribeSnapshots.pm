# Generated from callargs_class.tt

package Paws::ElastiCache::DescribeSnapshots;
  use Moo;
  use Types::Standard qw/Str Int Bool/;
  use Paws::ElastiCache::Types qw//;
  has CacheClusterId => (is => 'ro', isa => Str, predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has MaxRecords => (is => 'ro', isa => Int, predicate => 1);
  has ReplicationGroupId => (is => 'ro', isa => Str, predicate => 1);
  has ShowNodeGroupConfig => (is => 'ro', isa => Bool, predicate => 1);
  has SnapshotName => (is => 'ro', isa => Str, predicate => 1);
  has SnapshotSource => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeSnapshots');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ElastiCache::DescribeSnapshotsListMessage');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeSnapshotsResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SnapshotName' => {
                                   'type' => 'Str'
                                 },
               'CacheClusterId' => {
                                     'type' => 'Str'
                                   },
               'ShowNodeGroupConfig' => {
                                          'type' => 'Bool'
                                        },
               'ReplicationGroupId' => {
                                         'type' => 'Str'
                                       },
               'MaxRecords' => {
                                 'type' => 'Int'
                               },
               'SnapshotSource' => {
                                     'type' => 'Str'
                                   },
               'Marker' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeSnapshots - Arguments for method DescribeSnapshots on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSnapshots on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DescribeSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSnapshots.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $DescribeSnapshotsListMessage = $elasticache->DescribeSnapshots(
      CacheClusterId      => 'MyString',    # OPTIONAL
      Marker              => 'MyString',    # OPTIONAL
      MaxRecords          => 1,             # OPTIONAL
      ReplicationGroupId  => 'MyString',    # OPTIONAL
      ShowNodeGroupConfig => 1,             # OPTIONAL
      SnapshotName        => 'MyString',    # OPTIONAL
      SnapshotSource      => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Marker    = $DescribeSnapshotsListMessage->Marker;
    my $Snapshots = $DescribeSnapshotsListMessage->Snapshots;

    # Returns a L<Paws::ElastiCache::DescribeSnapshotsListMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DescribeSnapshots>

=head1 ATTRIBUTES


=head2 CacheClusterId => Str

A user-supplied cluster identifier. If this parameter is specified,
only snapshots associated with that specific cluster are described.



=head2 Marker => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a marker is
included in the response so that the remaining results can be
retrieved.

Default: 50

Constraints: minimum 20; maximum 50.



=head2 ReplicationGroupId => Str

A user-supplied replication group identifier. If this parameter is
specified, only snapshots associated with that specific replication
group are described.



=head2 ShowNodeGroupConfig => Bool

A Boolean value which if true, the node group (shard) configuration is
included in the snapshot description.



=head2 SnapshotName => Str

A user-supplied name of the snapshot. If this parameter is specified,
only this snapshot are described.



=head2 SnapshotSource => Str

If set to C<system>, the output shows snapshots that were automatically
created by ElastiCache. If set to C<user> the output shows snapshots
that were manually created. If omitted, the output shows both
automatically and manually created snapshots.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSnapshots in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

