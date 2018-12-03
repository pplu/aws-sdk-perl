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
  sub GetBootstrapBrokers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::GetBootstrapBrokers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNodes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListNodes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateCluster DeleteCluster DescribeCluster GetBootstrapBrokers ListClusters ListNodes / }

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

=item [EncryptionInfo => L<Paws::Kafka::EncryptionInfo>]

=item [EnhancedMonitoring => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::CreateCluster>

Returns: a L<Paws::Kafka::CreateClusterResponse> instance

Creates a new MSK cluster.


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


=head2 GetBootstrapBrokers

=over

=item ClusterArn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::GetBootstrapBrokers>

Returns: a L<Paws::Kafka::GetBootstrapBrokersResponse> instance

A list of brokers that a client application can use to bootstrap.


=head2 ListClusters

=over

=item [ClusterNameFilter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::ListClusters>

Returns: a L<Paws::Kafka::ListClustersResponse> instance

Returns a list of clusters in an account.


=head2 ListNodes

=over

=item ClusterArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::ListNodes>

Returns: a L<Paws::Kafka::ListNodesResponse> instance

Returns a list of the broker nodes in the cluster.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

