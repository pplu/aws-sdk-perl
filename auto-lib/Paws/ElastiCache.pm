package Paws::ElastiCache;
  use Moose;
  sub service { 'elasticache' }
  sub signing_name { 'elasticache' }
  sub version { '2015-02-02' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller';

  
  sub AddTagsToResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::AddTagsToResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AuthorizeCacheSecurityGroupIngress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::AuthorizeCacheSecurityGroupIngress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopySnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::CopySnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCacheCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::CreateCacheCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCacheParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::CreateCacheParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCacheSecurityGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::CreateCacheSecurityGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCacheSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::CreateCacheSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReplicationGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::CreateReplicationGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::CreateSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DecreaseReplicaCount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::DecreaseReplicaCount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCacheCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::DeleteCacheCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCacheParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::DeleteCacheParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCacheSecurityGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::DeleteCacheSecurityGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCacheSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::DeleteCacheSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicationGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::DeleteReplicationGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::DeleteSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCacheClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::DescribeCacheClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCacheEngineVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::DescribeCacheEngineVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCacheParameterGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::DescribeCacheParameterGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCacheParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::DescribeCacheParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCacheSecurityGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::DescribeCacheSecurityGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCacheSubnetGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::DescribeCacheSubnetGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEngineDefaultParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::DescribeEngineDefaultParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::DescribeEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::DescribeReplicationGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedCacheNodes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::DescribeReservedCacheNodes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedCacheNodesOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::DescribeReservedCacheNodesOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::DescribeSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub IncreaseReplicaCount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::IncreaseReplicaCount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAllowedNodeTypeModifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::ListAllowedNodeTypeModifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyCacheCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::ModifyCacheCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyCacheParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::ModifyCacheParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyCacheSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::ModifyCacheSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyReplicationGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::ModifyReplicationGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyReplicationGroupShardConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::ModifyReplicationGroupShardConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseReservedCacheNodesOffering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::PurchaseReservedCacheNodesOffering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootCacheCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::RebootCacheCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTagsFromResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::RemoveTagsFromResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetCacheParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::ResetCacheParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeCacheSecurityGroupIngress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::RevokeCacheSecurityGroupIngress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestFailover {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElastiCache::TestFailover', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllCacheClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCacheClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeCacheClusters(@_, Marker => $next_result->Marker);
        push @{ $result->CacheClusters }, @{ $next_result->CacheClusters };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'CacheClusters') foreach (@{ $result->CacheClusters });
        $result = $self->DescribeCacheClusters(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'CacheClusters') foreach (@{ $result->CacheClusters });
    }

    return undef
  }
  sub DescribeAllCacheEngineVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCacheEngineVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeCacheEngineVersions(@_, Marker => $next_result->Marker);
        push @{ $result->CacheEngineVersions }, @{ $next_result->CacheEngineVersions };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'CacheEngineVersions') foreach (@{ $result->CacheEngineVersions });
        $result = $self->DescribeCacheEngineVersions(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'CacheEngineVersions') foreach (@{ $result->CacheEngineVersions });
    }

    return undef
  }
  sub DescribeAllCacheParameterGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCacheParameterGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeCacheParameterGroups(@_, Marker => $next_result->Marker);
        push @{ $result->CacheParameterGroups }, @{ $next_result->CacheParameterGroups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'CacheParameterGroups') foreach (@{ $result->CacheParameterGroups });
        $result = $self->DescribeCacheParameterGroups(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'CacheParameterGroups') foreach (@{ $result->CacheParameterGroups });
    }

    return undef
  }
  sub DescribeAllCacheParameters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCacheParameters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeCacheParameters(@_, Marker => $next_result->Marker);
        push @{ $result->Parameters }, @{ $next_result->Parameters };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Parameters') foreach (@{ $result->Parameters });
        $result = $self->DescribeCacheParameters(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Parameters') foreach (@{ $result->Parameters });
    }

    return undef
  }
  sub DescribeAllCacheSecurityGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCacheSecurityGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeCacheSecurityGroups(@_, Marker => $next_result->Marker);
        push @{ $result->CacheSecurityGroups }, @{ $next_result->CacheSecurityGroups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'CacheSecurityGroups') foreach (@{ $result->CacheSecurityGroups });
        $result = $self->DescribeCacheSecurityGroups(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'CacheSecurityGroups') foreach (@{ $result->CacheSecurityGroups });
    }

    return undef
  }
  sub DescribeAllCacheSubnetGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCacheSubnetGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeCacheSubnetGroups(@_, Marker => $next_result->Marker);
        push @{ $result->CacheSubnetGroups }, @{ $next_result->CacheSubnetGroups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'CacheSubnetGroups') foreach (@{ $result->CacheSubnetGroups });
        $result = $self->DescribeCacheSubnetGroups(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'CacheSubnetGroups') foreach (@{ $result->CacheSubnetGroups });
    }

    return undef
  }
  sub DescribeAllEngineDefaultParameters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEngineDefaultParameters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->EngineDefaults->Marker) {
        $next_result = $self->DescribeEngineDefaultParameters(@_, Marker => $next_result->EngineDefaults->Marker);
        push @{ $result->EngineDefaults->Parameters }, @{ $next_result->EngineDefaults->Parameters };
      }
      return $result;
    } else {
      while ($result->EngineDefaults->Marker) {
        $callback->($_ => 'EngineDefaults.Parameters') foreach (@{ $result->EngineDefaults->Parameters });
        $result = $self->DescribeEngineDefaultParameters(@_, Marker => $result->EngineDefaults->Marker);
      }
      $callback->($_ => 'EngineDefaults.Parameters') foreach (@{ $result->EngineDefaults->Parameters });
    }

    return undef
  }
  sub DescribeAllEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeEvents(@_, Marker => $next_result->Marker);
        push @{ $result->Events }, @{ $next_result->Events };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Events') foreach (@{ $result->Events });
        $result = $self->DescribeEvents(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Events') foreach (@{ $result->Events });
    }

    return undef
  }
  sub DescribeAllReplicationGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReplicationGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeReplicationGroups(@_, Marker => $next_result->Marker);
        push @{ $result->ReplicationGroups }, @{ $next_result->ReplicationGroups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ReplicationGroups') foreach (@{ $result->ReplicationGroups });
        $result = $self->DescribeReplicationGroups(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ReplicationGroups') foreach (@{ $result->ReplicationGroups });
    }

    return undef
  }
  sub DescribeAllReservedCacheNodes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReservedCacheNodes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeReservedCacheNodes(@_, Marker => $next_result->Marker);
        push @{ $result->ReservedCacheNodes }, @{ $next_result->ReservedCacheNodes };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ReservedCacheNodes') foreach (@{ $result->ReservedCacheNodes });
        $result = $self->DescribeReservedCacheNodes(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ReservedCacheNodes') foreach (@{ $result->ReservedCacheNodes });
    }

    return undef
  }
  sub DescribeAllReservedCacheNodesOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReservedCacheNodesOfferings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeReservedCacheNodesOfferings(@_, Marker => $next_result->Marker);
        push @{ $result->ReservedCacheNodesOfferings }, @{ $next_result->ReservedCacheNodesOfferings };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ReservedCacheNodesOfferings') foreach (@{ $result->ReservedCacheNodesOfferings });
        $result = $self->DescribeReservedCacheNodesOfferings(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ReservedCacheNodesOfferings') foreach (@{ $result->ReservedCacheNodesOfferings });
    }

    return undef
  }
  sub DescribeAllSnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSnapshots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeSnapshots(@_, Marker => $next_result->Marker);
        push @{ $result->Snapshots }, @{ $next_result->Snapshots };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Snapshots') foreach (@{ $result->Snapshots });
        $result = $self->DescribeSnapshots(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Snapshots') foreach (@{ $result->Snapshots });
    }

    return undef
  }


  sub operations { qw/AddTagsToResource AuthorizeCacheSecurityGroupIngress CopySnapshot CreateCacheCluster CreateCacheParameterGroup CreateCacheSecurityGroup CreateCacheSubnetGroup CreateReplicationGroup CreateSnapshot DecreaseReplicaCount DeleteCacheCluster DeleteCacheParameterGroup DeleteCacheSecurityGroup DeleteCacheSubnetGroup DeleteReplicationGroup DeleteSnapshot DescribeCacheClusters DescribeCacheEngineVersions DescribeCacheParameterGroups DescribeCacheParameters DescribeCacheSecurityGroups DescribeCacheSubnetGroups DescribeEngineDefaultParameters DescribeEvents DescribeReplicationGroups DescribeReservedCacheNodes DescribeReservedCacheNodesOfferings DescribeSnapshots IncreaseReplicaCount ListAllowedNodeTypeModifications ListTagsForResource ModifyCacheCluster ModifyCacheParameterGroup ModifyCacheSubnetGroup ModifyReplicationGroup ModifyReplicationGroupShardConfiguration PurchaseReservedCacheNodesOffering RebootCacheCluster RemoveTagsFromResource ResetCacheParameterGroup RevokeCacheSecurityGroupIngress TestFailover / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache - Perl Interface to AWS Amazon ElastiCache

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ElastiCache');
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

Amazon ElastiCache

Amazon ElastiCache is a web service that makes it easier to set up,
operate, and scale a distributed cache in the cloud.

With ElastiCache, customers get all of the benefits of a
high-performance, in-memory cache with less of the administrative
burden involved in launching and managing a distributed cache. The
service makes setup, scaling, and cluster failure handling much simpler
than in a self-managed cache deployment.

In addition, through integration with Amazon CloudWatch, customers get
enhanced visibility into the key performance statistics associated with
their cache and can receive alarms if a part of their cache runs hot.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02>


=head1 METHODS

=head2 AddTagsToResource

=over

=item ResourceName => Str

=item Tags => ArrayRef[L<Paws::ElastiCache::Tag>]


=back

Each argument is described in detail in: L<Paws::ElastiCache::AddTagsToResource>

Returns: a L<Paws::ElastiCache::TagListMessage> instance

Adds up to 50 cost allocation tags to the named resource. A cost
allocation tag is a key-value pair where the key and value are
case-sensitive. You can use cost allocation tags to categorize and
track your AWS costs.

When you apply tags to your ElastiCache resources, AWS generates a cost
allocation report as a comma-separated value (CSV) file with your usage
and costs aggregated by your tags. You can apply tags that represent
business categories (such as cost centers, application names, or
owners) to organize your costs across multiple services. For more
information, see Using Cost Allocation Tags in Amazon ElastiCache
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Tagging.html)
in the I<ElastiCache User Guide>.


=head2 AuthorizeCacheSecurityGroupIngress

=over

=item CacheSecurityGroupName => Str

=item EC2SecurityGroupName => Str

=item EC2SecurityGroupOwnerId => Str


=back

Each argument is described in detail in: L<Paws::ElastiCache::AuthorizeCacheSecurityGroupIngress>

Returns: a L<Paws::ElastiCache::AuthorizeCacheSecurityGroupIngressResult> instance

Allows network ingress to a cache security group. Applications using
ElastiCache must be running on Amazon EC2, and Amazon EC2 security
groups are used as the authorization mechanism.

You cannot authorize ingress from an Amazon EC2 security group in one
region to an ElastiCache cluster in another region.


=head2 CopySnapshot

=over

=item SourceSnapshotName => Str

=item TargetSnapshotName => Str

=item [TargetBucket => Str]


=back

Each argument is described in detail in: L<Paws::ElastiCache::CopySnapshot>

Returns: a L<Paws::ElastiCache::CopySnapshotResult> instance

Makes a copy of an existing snapshot.

This operation is valid for Redis only.

Users or groups that have permissions to use the C<CopySnapshot>
operation can create their own Amazon S3 buckets and copy snapshots to
it. To control access to your snapshots, use an IAM policy to control
who has the ability to use the C<CopySnapshot> operation. For more
information about using IAM to control the use of ElastiCache
operations, see Exporting Snapshots
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Snapshots.Exporting.html)
and Authentication & Access Control
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/IAM.html).

You could receive the following error messages.

B<Error Messages>

=over

=item *

B<Error Message:> The S3 bucket %s is outside of the region.

B<Solution:> Create an Amazon S3 bucket in the same region as your
snapshot. For more information, see Step 1: Create an Amazon S3 Bucket
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Snapshots.Exporting.html#Snapshots.Exporting.CreateBucket)
in the ElastiCache User Guide.

=item *

B<Error Message:> The S3 bucket %s does not exist.

B<Solution:> Create an Amazon S3 bucket in the same region as your
snapshot. For more information, see Step 1: Create an Amazon S3 Bucket
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Snapshots.Exporting.html#Snapshots.Exporting.CreateBucket)
in the ElastiCache User Guide.

=item *

B<Error Message:> The S3 bucket %s is not owned by the authenticated
user.

B<Solution:> Create an Amazon S3 bucket in the same region as your
snapshot. For more information, see Step 1: Create an Amazon S3 Bucket
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Snapshots.Exporting.html#Snapshots.Exporting.CreateBucket)
in the ElastiCache User Guide.

=item *

B<Error Message:> The authenticated user does not have sufficient
permissions to perform the desired activity.

B<Solution:> Contact your system administrator to get the needed
permissions.

=item *

B<Error Message:> The S3 bucket %s already contains an object with key
%s.

B<Solution:> Give the C<TargetSnapshotName> a new and unique value. If
exporting a snapshot, you could alternatively create a new Amazon S3
bucket and use this same value for C<TargetSnapshotName>.

=item *

B<Error Message: > ElastiCache has not been granted READ permissions %s
on the S3 Bucket.

B<Solution:> Add List and Read permissions on the bucket. For more
information, see Step 2: Grant ElastiCache Access to Your Amazon S3
Bucket
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess)
in the ElastiCache User Guide.

=item *

B<Error Message: > ElastiCache has not been granted WRITE permissions
%s on the S3 Bucket.

B<Solution:> Add Upload/Delete permissions on the bucket. For more
information, see Step 2: Grant ElastiCache Access to Your Amazon S3
Bucket
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess)
in the ElastiCache User Guide.

=item *

B<Error Message: > ElastiCache has not been granted READ_ACP
permissions %s on the S3 Bucket.

B<Solution:> Add View Permissions on the bucket. For more information,
see Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess)
in the ElastiCache User Guide.

=back



=head2 CreateCacheCluster

=over

=item CacheClusterId => Str

=item [AuthToken => Str]

=item [AutoMinorVersionUpgrade => Bool]

=item [AZMode => Str]

=item [CacheNodeType => Str]

=item [CacheParameterGroupName => Str]

=item [CacheSecurityGroupNames => ArrayRef[Str|Undef]]

=item [CacheSubnetGroupName => Str]

=item [Engine => Str]

=item [EngineVersion => Str]

=item [NotificationTopicArn => Str]

=item [NumCacheNodes => Int]

=item [Port => Int]

=item [PreferredAvailabilityZone => Str]

=item [PreferredAvailabilityZones => ArrayRef[Str|Undef]]

=item [PreferredMaintenanceWindow => Str]

=item [ReplicationGroupId => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SnapshotArns => ArrayRef[Str|Undef]]

=item [SnapshotName => Str]

=item [SnapshotRetentionLimit => Int]

=item [SnapshotWindow => Str]

=item [Tags => ArrayRef[L<Paws::ElastiCache::Tag>]]


=back

Each argument is described in detail in: L<Paws::ElastiCache::CreateCacheCluster>

Returns: a L<Paws::ElastiCache::CreateCacheClusterResult> instance

Creates a cluster. All nodes in the cluster run the same
protocol-compliant cache engine software, either Memcached or Redis.

This operation is not supported for Redis (cluster mode enabled)
clusters.


=head2 CreateCacheParameterGroup

=over

=item CacheParameterGroupFamily => Str

=item CacheParameterGroupName => Str

=item Description => Str


=back

Each argument is described in detail in: L<Paws::ElastiCache::CreateCacheParameterGroup>

Returns: a L<Paws::ElastiCache::CreateCacheParameterGroupResult> instance

Creates a new Amazon ElastiCache cache parameter group. An ElastiCache
cache parameter group is a collection of parameters and their values
that are applied to all of the nodes in any cluster or replication
group using the CacheParameterGroup.

A newly created CacheParameterGroup is an exact duplicate of the
default parameter group for the CacheParameterGroupFamily. To customize
the newly created CacheParameterGroup you can change the values of
specific parameters. For more information, see:

=over

=item *

ModifyCacheParameterGroup
(http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyCacheParameterGroup.html)
in the ElastiCache API Reference.

=item *

Parameters and Parameter Groups
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.html)
in the ElastiCache User Guide.

=back



=head2 CreateCacheSecurityGroup

=over

=item CacheSecurityGroupName => Str

=item Description => Str


=back

Each argument is described in detail in: L<Paws::ElastiCache::CreateCacheSecurityGroup>

Returns: a L<Paws::ElastiCache::CreateCacheSecurityGroupResult> instance

Creates a new cache security group. Use a cache security group to
control access to one or more clusters.

Cache security groups are only used when you are creating a cluster
outside of an Amazon Virtual Private Cloud (Amazon VPC). If you are
creating a cluster inside of a VPC, use a cache subnet group instead.
For more information, see CreateCacheSubnetGroup
(http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateCacheSubnetGroup.html).


=head2 CreateCacheSubnetGroup

=over

=item CacheSubnetGroupDescription => Str

=item CacheSubnetGroupName => Str

=item SubnetIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ElastiCache::CreateCacheSubnetGroup>

Returns: a L<Paws::ElastiCache::CreateCacheSubnetGroupResult> instance

Creates a new cache subnet group.

Use this parameter only when you are creating a cluster in an Amazon
Virtual Private Cloud (Amazon VPC).


=head2 CreateReplicationGroup

=over

=item ReplicationGroupDescription => Str

=item ReplicationGroupId => Str

=item [AtRestEncryptionEnabled => Bool]

=item [AuthToken => Str]

=item [AutomaticFailoverEnabled => Bool]

=item [AutoMinorVersionUpgrade => Bool]

=item [CacheNodeType => Str]

=item [CacheParameterGroupName => Str]

=item [CacheSecurityGroupNames => ArrayRef[Str|Undef]]

=item [CacheSubnetGroupName => Str]

=item [Engine => Str]

=item [EngineVersion => Str]

=item [NodeGroupConfiguration => ArrayRef[L<Paws::ElastiCache::NodeGroupConfiguration>]]

=item [NotificationTopicArn => Str]

=item [NumCacheClusters => Int]

=item [NumNodeGroups => Int]

=item [Port => Int]

=item [PreferredCacheClusterAZs => ArrayRef[Str|Undef]]

=item [PreferredMaintenanceWindow => Str]

=item [PrimaryClusterId => Str]

=item [ReplicasPerNodeGroup => Int]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SnapshotArns => ArrayRef[Str|Undef]]

=item [SnapshotName => Str]

=item [SnapshotRetentionLimit => Int]

=item [SnapshotWindow => Str]

=item [Tags => ArrayRef[L<Paws::ElastiCache::Tag>]]

=item [TransitEncryptionEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::ElastiCache::CreateReplicationGroup>

Returns: a L<Paws::ElastiCache::CreateReplicationGroupResult> instance

Creates a Redis (cluster mode disabled) or a Redis (cluster mode
enabled) replication group.

A Redis (cluster mode disabled) replication group is a collection of
clusters, where one of the clusters is a read/write primary and the
others are read-only replicas. Writes to the primary are asynchronously
propagated to the replicas.

A Redis (cluster mode enabled) replication group is a collection of 1
to 15 node groups (shards). Each node group (shard) has one read/write
primary node and up to 5 read-only replica nodes. Writes to the primary
are asynchronously propagated to the replicas. Redis (cluster mode
enabled) replication groups partition the data across node groups
(shards).

When a Redis (cluster mode disabled) replication group has been
successfully created, you can add one or more read replicas to it, up
to a total of 5 read replicas. You cannot alter a Redis (cluster mode
enabled) replication group after it has been created. However, if you
need to increase or decrease the number of node groups (console:
shards), you can avail yourself of ElastiCache for Redis' enhanced
backup and restore. For more information, see Restoring From a Backup
with Cluster Resizing
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-restoring.html)
in the I<ElastiCache User Guide>.

This operation is valid for Redis only.


=head2 CreateSnapshot

=over

=item SnapshotName => Str

=item [CacheClusterId => Str]

=item [ReplicationGroupId => Str]


=back

Each argument is described in detail in: L<Paws::ElastiCache::CreateSnapshot>

Returns: a L<Paws::ElastiCache::CreateSnapshotResult> instance

Creates a copy of an entire cluster or replication group at a specific
moment in time.

This operation is valid for Redis only.


=head2 DecreaseReplicaCount

=over

=item ApplyImmediately => Bool

=item ReplicationGroupId => Str

=item [NewReplicaCount => Int]

=item [ReplicaConfiguration => ArrayRef[L<Paws::ElastiCache::ConfigureShard>]]

=item [ReplicasToRemove => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ElastiCache::DecreaseReplicaCount>

Returns: a L<Paws::ElastiCache::DecreaseReplicaCountResult> instance

Dynamically decreases the number of replics in a Redis (cluster mode
disabled) replication group or the number of replica nodes in one or
more node groups (shards) of a Redis (cluster mode enabled) replication
group. This operation is performed with no cluster down time.


=head2 DeleteCacheCluster

=over

=item CacheClusterId => Str

=item [FinalSnapshotIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::ElastiCache::DeleteCacheCluster>

Returns: a L<Paws::ElastiCache::DeleteCacheClusterResult> instance

Deletes a previously provisioned cluster. C<DeleteCacheCluster> deletes
all associated cache nodes, node endpoints and the cluster itself. When
you receive a successful response from this operation, Amazon
ElastiCache immediately begins deleting the cluster; you cannot cancel
or revert this operation.

This operation cannot be used to delete a cluster that is the last read
replica of a replication group or node group (shard) that has Multi-AZ
mode enabled or a cluster from a Redis (cluster mode enabled)
replication group.

This operation is not valid for Redis (cluster mode enabled) clusters.


=head2 DeleteCacheParameterGroup

=over

=item CacheParameterGroupName => Str


=back

Each argument is described in detail in: L<Paws::ElastiCache::DeleteCacheParameterGroup>

Returns: nothing

Deletes the specified cache parameter group. You cannot delete a cache
parameter group if it is associated with any cache clusters.


=head2 DeleteCacheSecurityGroup

=over

=item CacheSecurityGroupName => Str


=back

Each argument is described in detail in: L<Paws::ElastiCache::DeleteCacheSecurityGroup>

Returns: nothing

Deletes a cache security group.

You cannot delete a cache security group if it is associated with any
clusters.


=head2 DeleteCacheSubnetGroup

=over

=item CacheSubnetGroupName => Str


=back

Each argument is described in detail in: L<Paws::ElastiCache::DeleteCacheSubnetGroup>

Returns: nothing

Deletes a cache subnet group.

You cannot delete a cache subnet group if it is associated with any
clusters.


=head2 DeleteReplicationGroup

=over

=item ReplicationGroupId => Str

=item [FinalSnapshotIdentifier => Str]

=item [RetainPrimaryCluster => Bool]


=back

Each argument is described in detail in: L<Paws::ElastiCache::DeleteReplicationGroup>

Returns: a L<Paws::ElastiCache::DeleteReplicationGroupResult> instance

Deletes an existing replication group. By default, this operation
deletes the entire replication group, including the primary/primaries
and all of the read replicas. If the replication group has only one
primary, you can optionally delete only the read replicas, while
retaining the primary by setting C<RetainPrimaryCluster=true>.

When you receive a successful response from this operation, Amazon
ElastiCache immediately begins deleting the selected resources; you
cannot cancel or revert this operation.

This operation is valid for Redis only.


=head2 DeleteSnapshot

=over

=item SnapshotName => Str


=back

Each argument is described in detail in: L<Paws::ElastiCache::DeleteSnapshot>

Returns: a L<Paws::ElastiCache::DeleteSnapshotResult> instance

Deletes an existing snapshot. When you receive a successful response
from this operation, ElastiCache immediately begins deleting the
snapshot; you cannot cancel or revert this operation.

This operation is valid for Redis only.


=head2 DescribeCacheClusters

=over

=item [CacheClusterId => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [ShowCacheClustersNotInReplicationGroups => Bool]

=item [ShowCacheNodeInfo => Bool]


=back

Each argument is described in detail in: L<Paws::ElastiCache::DescribeCacheClusters>

Returns: a L<Paws::ElastiCache::CacheClusterMessage> instance

Returns information about all provisioned clusters if no cluster
identifier is specified, or about a specific cache cluster if a cluster
identifier is supplied.

By default, abbreviated information about the clusters is returned. You
can use the optional I<ShowCacheNodeInfo> flag to retrieve detailed
information about the cache nodes associated with the clusters. These
details include the DNS address and port for the cache node endpoint.

If the cluster is in the I<creating> state, only cluster-level
information is displayed until all of the nodes are successfully
provisioned.

If the cluster is in the I<deleting> state, only cluster-level
information is displayed.

If cache nodes are currently being added to the cluster, node endpoint
information and creation time for the additional nodes are not
displayed until they are completely provisioned. When the cluster state
is I<available>, the cluster is ready for use.

If cache nodes are currently being removed from the cluster, no
endpoint information for the removed nodes is displayed.


=head2 DescribeCacheEngineVersions

=over

=item [CacheParameterGroupFamily => Str]

=item [DefaultOnly => Bool]

=item [Engine => Str]

=item [EngineVersion => Str]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::ElastiCache::DescribeCacheEngineVersions>

Returns: a L<Paws::ElastiCache::CacheEngineVersionMessage> instance

Returns a list of the available cache engines and their versions.


=head2 DescribeCacheParameterGroups

=over

=item [CacheParameterGroupName => Str]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::ElastiCache::DescribeCacheParameterGroups>

Returns: a L<Paws::ElastiCache::CacheParameterGroupsMessage> instance

Returns a list of cache parameter group descriptions. If a cache
parameter group name is specified, the list contains only the
descriptions for that group.


=head2 DescribeCacheParameters

=over

=item CacheParameterGroupName => Str

=item [Marker => Str]

=item [MaxRecords => Int]

=item [Source => Str]


=back

Each argument is described in detail in: L<Paws::ElastiCache::DescribeCacheParameters>

Returns: a L<Paws::ElastiCache::CacheParameterGroupDetails> instance

Returns the detailed parameter list for a particular cache parameter
group.


=head2 DescribeCacheSecurityGroups

=over

=item [CacheSecurityGroupName => Str]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::ElastiCache::DescribeCacheSecurityGroups>

Returns: a L<Paws::ElastiCache::CacheSecurityGroupMessage> instance

Returns a list of cache security group descriptions. If a cache
security group name is specified, the list contains only the
description of that group.


=head2 DescribeCacheSubnetGroups

=over

=item [CacheSubnetGroupName => Str]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::ElastiCache::DescribeCacheSubnetGroups>

Returns: a L<Paws::ElastiCache::CacheSubnetGroupMessage> instance

Returns a list of cache subnet group descriptions. If a subnet group
name is specified, the list contains only the description of that
group.


=head2 DescribeEngineDefaultParameters

=over

=item CacheParameterGroupFamily => Str

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::ElastiCache::DescribeEngineDefaultParameters>

Returns: a L<Paws::ElastiCache::DescribeEngineDefaultParametersResult> instance

Returns the default engine and system parameter information for the
specified cache engine.


=head2 DescribeEvents

=over

=item [Duration => Int]

=item [EndTime => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [SourceIdentifier => Str]

=item [SourceType => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::ElastiCache::DescribeEvents>

Returns: a L<Paws::ElastiCache::EventsMessage> instance

Returns events related to clusters, cache security groups, and cache
parameter groups. You can obtain events specific to a particular
cluster, cache security group, or cache parameter group by providing
the name as a parameter.

By default, only the events occurring within the last hour are
returned; however, you can retrieve up to 14 days' worth of events if
necessary.


=head2 DescribeReplicationGroups

=over

=item [Marker => Str]

=item [MaxRecords => Int]

=item [ReplicationGroupId => Str]


=back

Each argument is described in detail in: L<Paws::ElastiCache::DescribeReplicationGroups>

Returns: a L<Paws::ElastiCache::ReplicationGroupMessage> instance

Returns information about a particular replication group. If no
identifier is specified, C<DescribeReplicationGroups> returns
information about all replication groups.

This operation is valid for Redis only.


=head2 DescribeReservedCacheNodes

=over

=item [CacheNodeType => Str]

=item [Duration => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [OfferingType => Str]

=item [ProductDescription => Str]

=item [ReservedCacheNodeId => Str]

=item [ReservedCacheNodesOfferingId => Str]


=back

Each argument is described in detail in: L<Paws::ElastiCache::DescribeReservedCacheNodes>

Returns: a L<Paws::ElastiCache::ReservedCacheNodeMessage> instance

Returns information about reserved cache nodes for this account, or
about a specified reserved cache node.


=head2 DescribeReservedCacheNodesOfferings

=over

=item [CacheNodeType => Str]

=item [Duration => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [OfferingType => Str]

=item [ProductDescription => Str]

=item [ReservedCacheNodesOfferingId => Str]


=back

Each argument is described in detail in: L<Paws::ElastiCache::DescribeReservedCacheNodesOfferings>

Returns: a L<Paws::ElastiCache::ReservedCacheNodesOfferingMessage> instance

Lists available reserved cache node offerings.


=head2 DescribeSnapshots

=over

=item [CacheClusterId => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [ReplicationGroupId => Str]

=item [ShowNodeGroupConfig => Bool]

=item [SnapshotName => Str]

=item [SnapshotSource => Str]


=back

Each argument is described in detail in: L<Paws::ElastiCache::DescribeSnapshots>

Returns: a L<Paws::ElastiCache::DescribeSnapshotsListMessage> instance

Returns information about cluster or replication group snapshots. By
default, C<DescribeSnapshots> lists all of your snapshots; it can
optionally describe a single snapshot, or just the snapshots associated
with a particular cache cluster.

This operation is valid for Redis only.


=head2 IncreaseReplicaCount

=over

=item ApplyImmediately => Bool

=item ReplicationGroupId => Str

=item [NewReplicaCount => Int]

=item [ReplicaConfiguration => ArrayRef[L<Paws::ElastiCache::ConfigureShard>]]


=back

Each argument is described in detail in: L<Paws::ElastiCache::IncreaseReplicaCount>

Returns: a L<Paws::ElastiCache::IncreaseReplicaCountResult> instance

Dynamically increases the number of replics in a Redis (cluster mode
disabled) replication group or the number of replica nodes in one or
more node groups (shards) of a Redis (cluster mode enabled) replication
group. This operation is performed with no cluster down time.


=head2 ListAllowedNodeTypeModifications

=over

=item [CacheClusterId => Str]

=item [ReplicationGroupId => Str]


=back

Each argument is described in detail in: L<Paws::ElastiCache::ListAllowedNodeTypeModifications>

Returns: a L<Paws::ElastiCache::AllowedNodeTypeModificationsMessage> instance

Lists all available node types that you can scale your Redis cluster's
or replication group's current node type up to.

When you use the C<ModifyCacheCluster> or C<ModifyReplicationGroup>
operations to scale up your cluster or replication group, the value of
the C<CacheNodeType> parameter must be one of the node types returned
by this operation.


=head2 ListTagsForResource

=over

=item ResourceName => Str


=back

Each argument is described in detail in: L<Paws::ElastiCache::ListTagsForResource>

Returns: a L<Paws::ElastiCache::TagListMessage> instance

Lists all cost allocation tags currently on the named resource. A
C<cost allocation tag> is a key-value pair where the key is
case-sensitive and the value is optional. You can use cost allocation
tags to categorize and track your AWS costs.

If the cluster is not in the I<available> state, C<ListTagsForResource>
returns an error.

You can have a maximum of 50 cost allocation tags on an ElastiCache
resource. For more information, see Monitoring Costs with Tags
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Tagging.html).


=head2 ModifyCacheCluster

=over

=item CacheClusterId => Str

=item [ApplyImmediately => Bool]

=item [AutoMinorVersionUpgrade => Bool]

=item [AZMode => Str]

=item [CacheNodeIdsToRemove => ArrayRef[Str|Undef]]

=item [CacheNodeType => Str]

=item [CacheParameterGroupName => Str]

=item [CacheSecurityGroupNames => ArrayRef[Str|Undef]]

=item [EngineVersion => Str]

=item [NewAvailabilityZones => ArrayRef[Str|Undef]]

=item [NotificationTopicArn => Str]

=item [NotificationTopicStatus => Str]

=item [NumCacheNodes => Int]

=item [PreferredMaintenanceWindow => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SnapshotRetentionLimit => Int]

=item [SnapshotWindow => Str]


=back

Each argument is described in detail in: L<Paws::ElastiCache::ModifyCacheCluster>

Returns: a L<Paws::ElastiCache::ModifyCacheClusterResult> instance

Modifies the settings for a cluster. You can use this operation to
change one or more cluster configuration parameters by specifying the
parameters and the new values.


=head2 ModifyCacheParameterGroup

=over

=item CacheParameterGroupName => Str

=item ParameterNameValues => ArrayRef[L<Paws::ElastiCache::ParameterNameValue>]


=back

Each argument is described in detail in: L<Paws::ElastiCache::ModifyCacheParameterGroup>

Returns: a L<Paws::ElastiCache::CacheParameterGroupNameMessage> instance

Modifies the parameters of a cache parameter group. You can modify up
to 20 parameters in a single request by submitting a list parameter
name and value pairs.


=head2 ModifyCacheSubnetGroup

=over

=item CacheSubnetGroupName => Str

=item [CacheSubnetGroupDescription => Str]

=item [SubnetIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ElastiCache::ModifyCacheSubnetGroup>

Returns: a L<Paws::ElastiCache::ModifyCacheSubnetGroupResult> instance

Modifies an existing cache subnet group.


=head2 ModifyReplicationGroup

=over

=item ReplicationGroupId => Str

=item [ApplyImmediately => Bool]

=item [AutomaticFailoverEnabled => Bool]

=item [AutoMinorVersionUpgrade => Bool]

=item [CacheNodeType => Str]

=item [CacheParameterGroupName => Str]

=item [CacheSecurityGroupNames => ArrayRef[Str|Undef]]

=item [EngineVersion => Str]

=item [NodeGroupId => Str]

=item [NotificationTopicArn => Str]

=item [NotificationTopicStatus => Str]

=item [PreferredMaintenanceWindow => Str]

=item [PrimaryClusterId => Str]

=item [ReplicationGroupDescription => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SnapshotRetentionLimit => Int]

=item [SnapshottingClusterId => Str]

=item [SnapshotWindow => Str]


=back

Each argument is described in detail in: L<Paws::ElastiCache::ModifyReplicationGroup>

Returns: a L<Paws::ElastiCache::ModifyReplicationGroupResult> instance

Modifies the settings for a replication group.

For Redis (cluster mode enabled) clusters, this operation cannot be
used to change a cluster's node type or engine version. For more
information, see:

=over

=item *

Scaling for Amazon ElastiCache for RedisE<mdash>Redis (cluster mode
enabled)
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/scaling-redis-cluster-mode-enabled.html)
in the ElastiCache User Guide

=item *

ModifyReplicationGroupShardConfiguration
(http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyReplicationGroupShardConfiguration.html)
in the ElastiCache API Reference

=back

This operation is valid for Redis only.


=head2 ModifyReplicationGroupShardConfiguration

=over

=item ApplyImmediately => Bool

=item NodeGroupCount => Int

=item ReplicationGroupId => Str

=item [NodeGroupsToRemove => ArrayRef[Str|Undef]]

=item [NodeGroupsToRetain => ArrayRef[Str|Undef]]

=item [ReshardingConfiguration => ArrayRef[L<Paws::ElastiCache::ReshardingConfiguration>]]


=back

Each argument is described in detail in: L<Paws::ElastiCache::ModifyReplicationGroupShardConfiguration>

Returns: a L<Paws::ElastiCache::ModifyReplicationGroupShardConfigurationResult> instance

Modifies a replication group's shards (node groups) by allowing you to
add shards, remove shards, or rebalance the keyspaces among exisiting
shards.


=head2 PurchaseReservedCacheNodesOffering

=over

=item ReservedCacheNodesOfferingId => Str

=item [CacheNodeCount => Int]

=item [ReservedCacheNodeId => Str]


=back

Each argument is described in detail in: L<Paws::ElastiCache::PurchaseReservedCacheNodesOffering>

Returns: a L<Paws::ElastiCache::PurchaseReservedCacheNodesOfferingResult> instance

Allows you to purchase a reserved cache node offering.


=head2 RebootCacheCluster

=over

=item CacheClusterId => Str

=item CacheNodeIdsToReboot => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ElastiCache::RebootCacheCluster>

Returns: a L<Paws::ElastiCache::RebootCacheClusterResult> instance

Reboots some, or all, of the cache nodes within a provisioned cluster.
This operation applies any modified cache parameter groups to the
cluster. The reboot operation takes place as soon as possible, and
results in a momentary outage to the cluster. During the reboot, the
cluster status is set to REBOOTING.

The reboot causes the contents of the cache (for each cache node being
rebooted) to be lost.

When the reboot is complete, a cluster event is created.

Rebooting a cluster is currently supported on Memcached and Redis
(cluster mode disabled) clusters. Rebooting is not supported on Redis
(cluster mode enabled) clusters.

If you make changes to parameters that require a Redis (cluster mode
enabled) cluster reboot for the changes to be applied, see Rebooting a
Cluster
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html)
for an alternate process.


=head2 RemoveTagsFromResource

=over

=item ResourceName => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ElastiCache::RemoveTagsFromResource>

Returns: a L<Paws::ElastiCache::TagListMessage> instance

Removes the tags identified by the C<TagKeys> list from the named
resource.


=head2 ResetCacheParameterGroup

=over

=item CacheParameterGroupName => Str

=item [ParameterNameValues => ArrayRef[L<Paws::ElastiCache::ParameterNameValue>]]

=item [ResetAllParameters => Bool]


=back

Each argument is described in detail in: L<Paws::ElastiCache::ResetCacheParameterGroup>

Returns: a L<Paws::ElastiCache::CacheParameterGroupNameMessage> instance

Modifies the parameters of a cache parameter group to the engine or
system default value. You can reset specific parameters by submitting a
list of parameter names. To reset the entire cache parameter group,
specify the C<ResetAllParameters> and C<CacheParameterGroupName>
parameters.


=head2 RevokeCacheSecurityGroupIngress

=over

=item CacheSecurityGroupName => Str

=item EC2SecurityGroupName => Str

=item EC2SecurityGroupOwnerId => Str


=back

Each argument is described in detail in: L<Paws::ElastiCache::RevokeCacheSecurityGroupIngress>

Returns: a L<Paws::ElastiCache::RevokeCacheSecurityGroupIngressResult> instance

Revokes ingress from a cache security group. Use this operation to
disallow access from an Amazon EC2 security group that had been
previously authorized.


=head2 TestFailover

=over

=item NodeGroupId => Str

=item ReplicationGroupId => Str


=back

Each argument is described in detail in: L<Paws::ElastiCache::TestFailover>

Returns: a L<Paws::ElastiCache::TestFailoverResult> instance

Represents the input of a C<TestFailover> operation which test
automatic failover on a specified node group (called shard in the
console) in a replication group (called cluster in the console).

B<Note the following>

=over

=item *

A customer can use this operation to test automatic failover on up to 5
shards (called node groups in the ElastiCache API and AWS CLI) in any
rolling 24-hour period.

=item *

If calling this operation on shards in different clusters (called
replication groups in the API and CLI), the calls can be made
concurrently.

=item *

If calling this operation multiple times on different shards in the
same Redis (cluster mode enabled) replication group, the first node
replacement must complete before a subsequent call can be made.

=item *

To determine whether the node replacement is complete you can check
Events using the Amazon ElastiCache console, the AWS CLI, or the
ElastiCache API. Look for the following automatic failover related
events, listed here in order of occurrance:

=over

=item 1.

Replication group message: C<Test Failover API called for node group
E<lt>node-group-idE<gt>>

=item 2.

Cache cluster message: C<Failover from master node
E<lt>primary-node-idE<gt> to replica node E<lt>node-idE<gt> completed>

=item 3.

Replication group message: C<Failover from master node
E<lt>primary-node-idE<gt> to replica node E<lt>node-idE<gt> completed>

=item 4.

Cache cluster message: C<Recovering cache nodes E<lt>node-idE<gt>>

=item 5.

Cache cluster message: C<Finished recovery for cache nodes
E<lt>node-idE<gt>>

=back

For more information see:

=over

=item *

Viewing ElastiCache Events
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ECEvents.Viewing.html)
in the I<ElastiCache User Guide>

=item *

DescribeEvents
(http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_DescribeEvents.html)
in the ElastiCache API Reference

=back

=back

Also see, Testing Multi-AZ with Automatic Failover
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/AutoFailover.html#auto-failover-test)
in the I<ElastiCache User Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllCacheClusters(sub { },[CacheClusterId => Str, Marker => Str, MaxRecords => Int, ShowCacheClustersNotInReplicationGroups => Bool, ShowCacheNodeInfo => Bool])

=head2 DescribeAllCacheClusters([CacheClusterId => Str, Marker => Str, MaxRecords => Int, ShowCacheClustersNotInReplicationGroups => Bool, ShowCacheNodeInfo => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CacheClusters, passing the object as the first parameter, and the string 'CacheClusters' as the second parameter 

If not, it will return a a L<Paws::ElastiCache::CacheClusterMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllCacheEngineVersions(sub { },[CacheParameterGroupFamily => Str, DefaultOnly => Bool, Engine => Str, EngineVersion => Str, Marker => Str, MaxRecords => Int])

=head2 DescribeAllCacheEngineVersions([CacheParameterGroupFamily => Str, DefaultOnly => Bool, Engine => Str, EngineVersion => Str, Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CacheEngineVersions, passing the object as the first parameter, and the string 'CacheEngineVersions' as the second parameter 

If not, it will return a a L<Paws::ElastiCache::CacheEngineVersionMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllCacheParameterGroups(sub { },[CacheParameterGroupName => Str, Marker => Str, MaxRecords => Int])

=head2 DescribeAllCacheParameterGroups([CacheParameterGroupName => Str, Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CacheParameterGroups, passing the object as the first parameter, and the string 'CacheParameterGroups' as the second parameter 

If not, it will return a a L<Paws::ElastiCache::CacheParameterGroupsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllCacheParameters(sub { },CacheParameterGroupName => Str, [Marker => Str, MaxRecords => Int, Source => Str])

=head2 DescribeAllCacheParameters(CacheParameterGroupName => Str, [Marker => Str, MaxRecords => Int, Source => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Parameters, passing the object as the first parameter, and the string 'Parameters' as the second parameter 

If not, it will return a a L<Paws::ElastiCache::CacheParameterGroupDetails> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllCacheSecurityGroups(sub { },[CacheSecurityGroupName => Str, Marker => Str, MaxRecords => Int])

=head2 DescribeAllCacheSecurityGroups([CacheSecurityGroupName => Str, Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CacheSecurityGroups, passing the object as the first parameter, and the string 'CacheSecurityGroups' as the second parameter 

If not, it will return a a L<Paws::ElastiCache::CacheSecurityGroupMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllCacheSubnetGroups(sub { },[CacheSubnetGroupName => Str, Marker => Str, MaxRecords => Int])

=head2 DescribeAllCacheSubnetGroups([CacheSubnetGroupName => Str, Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CacheSubnetGroups, passing the object as the first parameter, and the string 'CacheSubnetGroups' as the second parameter 

If not, it will return a a L<Paws::ElastiCache::CacheSubnetGroupMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEngineDefaultParameters(sub { },CacheParameterGroupFamily => Str, [Marker => Str, MaxRecords => Int])

=head2 DescribeAllEngineDefaultParameters(CacheParameterGroupFamily => Str, [Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EngineDefaults.Parameters, passing the object as the first parameter, and the string 'EngineDefaults.Parameters' as the second parameter 

If not, it will return a a L<Paws::ElastiCache::DescribeEngineDefaultParametersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEvents(sub { },[Duration => Int, EndTime => Str, Marker => Str, MaxRecords => Int, SourceIdentifier => Str, SourceType => Str, StartTime => Str])

=head2 DescribeAllEvents([Duration => Int, EndTime => Str, Marker => Str, MaxRecords => Int, SourceIdentifier => Str, SourceType => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Events, passing the object as the first parameter, and the string 'Events' as the second parameter 

If not, it will return a a L<Paws::ElastiCache::EventsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReplicationGroups(sub { },[Marker => Str, MaxRecords => Int, ReplicationGroupId => Str])

=head2 DescribeAllReplicationGroups([Marker => Str, MaxRecords => Int, ReplicationGroupId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReplicationGroups, passing the object as the first parameter, and the string 'ReplicationGroups' as the second parameter 

If not, it will return a a L<Paws::ElastiCache::ReplicationGroupMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReservedCacheNodes(sub { },[CacheNodeType => Str, Duration => Str, Marker => Str, MaxRecords => Int, OfferingType => Str, ProductDescription => Str, ReservedCacheNodeId => Str, ReservedCacheNodesOfferingId => Str])

=head2 DescribeAllReservedCacheNodes([CacheNodeType => Str, Duration => Str, Marker => Str, MaxRecords => Int, OfferingType => Str, ProductDescription => Str, ReservedCacheNodeId => Str, ReservedCacheNodesOfferingId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReservedCacheNodes, passing the object as the first parameter, and the string 'ReservedCacheNodes' as the second parameter 

If not, it will return a a L<Paws::ElastiCache::ReservedCacheNodeMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReservedCacheNodesOfferings(sub { },[CacheNodeType => Str, Duration => Str, Marker => Str, MaxRecords => Int, OfferingType => Str, ProductDescription => Str, ReservedCacheNodesOfferingId => Str])

=head2 DescribeAllReservedCacheNodesOfferings([CacheNodeType => Str, Duration => Str, Marker => Str, MaxRecords => Int, OfferingType => Str, ProductDescription => Str, ReservedCacheNodesOfferingId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReservedCacheNodesOfferings, passing the object as the first parameter, and the string 'ReservedCacheNodesOfferings' as the second parameter 

If not, it will return a a L<Paws::ElastiCache::ReservedCacheNodesOfferingMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSnapshots(sub { },[CacheClusterId => Str, Marker => Str, MaxRecords => Int, ReplicationGroupId => Str, ShowNodeGroupConfig => Bool, SnapshotName => Str, SnapshotSource => Str])

=head2 DescribeAllSnapshots([CacheClusterId => Str, Marker => Str, MaxRecords => Int, ReplicationGroupId => Str, ShowNodeGroupConfig => Bool, SnapshotName => Str, SnapshotSource => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Snapshots, passing the object as the first parameter, and the string 'Snapshots' as the second parameter 

If not, it will return a a L<Paws::ElastiCache::DescribeSnapshotsListMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

