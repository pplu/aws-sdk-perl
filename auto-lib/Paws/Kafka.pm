package Paws::Kafka;
  use Moose;
  sub service { 'kafka' }
  sub signing_name { 'kafka' }
  sub version { '2018-11-14' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::CreateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::CreateConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::DeleteCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::DescribeCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusterOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::DescribeClusterOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::DescribeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigurationRevision {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::DescribeConfigurationRevision', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBootstrapBrokers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::GetBootstrapBrokers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusterOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListClusterOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurationRevisions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListConfigurationRevisions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNodes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListNodes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBrokerCount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::UpdateBrokerCount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBrokerStorage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::UpdateBrokerStorage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateClusterConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::UpdateClusterConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllClusterOperations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClusterOperations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListClusterOperations(@_, NextToken => $next_result->NextToken);
        push @{ $result->ClusterOperationInfoList }, @{ $next_result->ClusterOperationInfoList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ClusterOperationInfoList') foreach (@{ $result->ClusterOperationInfoList });
        $result = $self->ListClusterOperations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ClusterOperationInfoList') foreach (@{ $result->ClusterOperationInfoList });
    }

    return undef
  }
  sub ListAllClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListClusters(@_, NextToken => $next_result->NextToken);
        push @{ $result->ClusterInfoList }, @{ $next_result->ClusterInfoList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ClusterInfoList') foreach (@{ $result->ClusterInfoList });
        $result = $self->ListClusters(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ClusterInfoList') foreach (@{ $result->ClusterInfoList });
    }

    return undef
  }
  sub ListAllConfigurationRevisions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConfigurationRevisions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListConfigurationRevisions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Revisions }, @{ $next_result->Revisions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Revisions') foreach (@{ $result->Revisions });
        $result = $self->ListConfigurationRevisions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Revisions') foreach (@{ $result->Revisions });
    }

    return undef
  }
  sub ListAllConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Configurations }, @{ $next_result->Configurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Configurations') foreach (@{ $result->Configurations });
        $result = $self->ListConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Configurations') foreach (@{ $result->Configurations });
    }

    return undef
  }
  sub ListAllNodes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNodes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListNodes(@_, NextToken => $next_result->NextToken);
        push @{ $result->NodeInfoList }, @{ $next_result->NodeInfoList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NodeInfoList') foreach (@{ $result->NodeInfoList });
        $result = $self->ListNodes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NodeInfoList') foreach (@{ $result->NodeInfoList });
    }

    return undef
  }


  sub operations { qw/CreateCluster CreateConfiguration DeleteCluster DescribeCluster DescribeClusterOperation DescribeConfiguration DescribeConfigurationRevision GetBootstrapBrokers ListClusterOperations ListClusters ListConfigurationRevisions ListConfigurations ListNodes ListTagsForResource TagResource UntagResource UpdateBrokerCount UpdateBrokerStorage UpdateClusterConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka - Perl Interface to AWS Managed Streaming for Kafka

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Kafka');
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

The operations for managing an Amazon MSK cluster.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14>


=head1 METHODS

=head2 CreateCluster

=over

=item BrokerNodeGroupInfo => L<Paws::Kafka::BrokerNodeGroupInfo>

=item ClusterName => Str

=item KafkaVersion => Str

=item NumberOfBrokerNodes => Int

=item [ClientAuthentication => L<Paws::Kafka::ClientAuthentication>]

=item [ConfigurationInfo => L<Paws::Kafka::ConfigurationInfo>]

=item [EncryptionInfo => L<Paws::Kafka::EncryptionInfo>]

=item [EnhancedMonitoring => Str]

=item [Tags => L<Paws::Kafka::__mapOf__string>]


=back

Each argument is described in detail in: L<Paws::Kafka::CreateCluster>

Returns: a L<Paws::Kafka::CreateClusterResponse> instance

Creates a new MSK cluster.


=head2 CreateConfiguration

=over

=item KafkaVersions => ArrayRef[Str|Undef]

=item Name => Str

=item ServerProperties => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::CreateConfiguration>

Returns: a L<Paws::Kafka::CreateConfigurationResponse> instance

Creates a new MSK configuration.


=head2 DeleteCluster

=over

=item ClusterArn => Str

=item [CurrentVersion => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::DeleteCluster>

Returns: a L<Paws::Kafka::DeleteClusterResponse> instance

Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in
the request.


=head2 DescribeCluster

=over

=item ClusterArn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::DescribeCluster>

Returns: a L<Paws::Kafka::DescribeClusterResponse> instance

Returns a description of the MSK cluster whose Amazon Resource Name
(ARN) is specified in the request.


=head2 DescribeClusterOperation

=over

=item ClusterOperationArn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::DescribeClusterOperation>

Returns: a L<Paws::Kafka::DescribeClusterOperationResponse> instance

Returns a description of the cluster operation specified by the ARN.


=head2 DescribeConfiguration

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::DescribeConfiguration>

Returns: a L<Paws::Kafka::DescribeConfigurationResponse> instance

Returns a description of this MSK configuration.


=head2 DescribeConfigurationRevision

=over

=item Arn => Str

=item Revision => Int


=back

Each argument is described in detail in: L<Paws::Kafka::DescribeConfigurationRevision>

Returns: a L<Paws::Kafka::DescribeConfigurationRevisionResponse> instance

Returns a description of this revision of the configuration.


=head2 GetBootstrapBrokers

=over

=item ClusterArn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::GetBootstrapBrokers>

Returns: a L<Paws::Kafka::GetBootstrapBrokersResponse> instance

A list of brokers that a client application can use to bootstrap.


=head2 ListClusterOperations

=over

=item ClusterArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::ListClusterOperations>

Returns: a L<Paws::Kafka::ListClusterOperationsResponse> instance

Returns a list of all the operations that have been performed on the
specified MSK cluster.


=head2 ListClusters

=over

=item [ClusterNameFilter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::ListClusters>

Returns: a L<Paws::Kafka::ListClustersResponse> instance

Returns a list of all the MSK clusters in the current Region.


=head2 ListConfigurationRevisions

=over

=item Arn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::ListConfigurationRevisions>

Returns: a L<Paws::Kafka::ListConfigurationRevisionsResponse> instance

Returns a list of all the MSK configurations in this Region.


=head2 ListConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::ListConfigurations>

Returns: a L<Paws::Kafka::ListConfigurationsResponse> instance

Returns a list of all the MSK configurations in this Region.


=head2 ListNodes

=over

=item ClusterArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::ListNodes>

Returns: a L<Paws::Kafka::ListNodesResponse> instance

Returns a list of the broker nodes in the cluster.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::ListTagsForResource>

Returns: a L<Paws::Kafka::ListTagsForResourceResponse> instance

Returns a list of the tags associated with the specified resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Kafka::__mapOf__string>


=back

Each argument is described in detail in: L<Paws::Kafka::TagResource>

Returns: nothing

Adds tags to the specified MSK resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Kafka::UntagResource>

Returns: nothing

Removes the tags associated with the keys that are provided in the
query.


=head2 UpdateBrokerCount

=over

=item ClusterArn => Str

=item CurrentVersion => Str

=item TargetNumberOfBrokerNodes => Int


=back

Each argument is described in detail in: L<Paws::Kafka::UpdateBrokerCount>

Returns: a L<Paws::Kafka::UpdateBrokerCountResponse> instance

Updates the number of broker nodes in the cluster.


=head2 UpdateBrokerStorage

=over

=item ClusterArn => Str

=item CurrentVersion => Str

=item TargetBrokerEBSVolumeInfo => ArrayRef[L<Paws::Kafka::BrokerEBSVolumeInfo>]


=back

Each argument is described in detail in: L<Paws::Kafka::UpdateBrokerStorage>

Returns: a L<Paws::Kafka::UpdateBrokerStorageResponse> instance

Updates the EBS storage associated with MSK brokers.


=head2 UpdateClusterConfiguration

=over

=item ClusterArn => Str

=item ConfigurationInfo => L<Paws::Kafka::ConfigurationInfo>

=item CurrentVersion => Str


=back

Each argument is described in detail in: L<Paws::Kafka::UpdateClusterConfiguration>

Returns: a L<Paws::Kafka::UpdateClusterConfigurationResponse> instance

Updates the cluster with the configuration that is specified in the
request body.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllClusterOperations(sub { },ClusterArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllClusterOperations(ClusterArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ClusterOperationInfoList, passing the object as the first parameter, and the string 'ClusterOperationInfoList' as the second parameter 

If not, it will return a a L<Paws::Kafka::ListClusterOperationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllClusters(sub { },[ClusterNameFilter => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllClusters([ClusterNameFilter => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ClusterInfoList, passing the object as the first parameter, and the string 'ClusterInfoList' as the second parameter 

If not, it will return a a L<Paws::Kafka::ListClustersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConfigurationRevisions(sub { },Arn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllConfigurationRevisions(Arn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Revisions, passing the object as the first parameter, and the string 'Revisions' as the second parameter 

If not, it will return a a L<Paws::Kafka::ListConfigurationRevisionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConfigurations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllConfigurations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Configurations, passing the object as the first parameter, and the string 'Configurations' as the second parameter 

If not, it will return a a L<Paws::Kafka::ListConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNodes(sub { },ClusterArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllNodes(ClusterArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NodeInfoList, passing the object as the first parameter, and the string 'NodeInfoList' as the second parameter 

If not, it will return a a L<Paws::Kafka::ListNodesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

