package Paws::CloudHSMv2;
  use Moose;
  sub service { 'cloudhsmv2' }
  sub version { '2017-04-28' }
  sub target_prefix { 'BaldrApiService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub CreateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::CreateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHsm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::CreateHsm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::DeleteCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHsm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::DeleteHsm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBackups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::DescribeBackups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::DescribeClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InitializeCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::InitializeCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudHSMv2::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateCluster CreateHsm DeleteCluster DeleteHsm DescribeBackups DescribeClusters InitializeCluster ListTags TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2 - Perl Interface to AWS AWS CloudHSM V2

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CloudHSMv2');
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

For more information about AWS CloudHSM, see AWS CloudHSM
(http://aws.amazon.com/cloudhsm/) and the AWS CloudHSM User Guide
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/).

=head1 METHODS

=head2 CreateCluster(HsmType => Str, SubnetIds => ArrayRef[Str|Undef], [SourceBackupId => Str])

Each argument is described in detail in: L<Paws::CloudHSMv2::CreateCluster>

Returns: a L<Paws::CloudHSMv2::CreateClusterResponse> instance

  Creates a new AWS CloudHSM cluster.


=head2 CreateHsm(AvailabilityZone => Str, ClusterId => Str, [IpAddress => Str])

Each argument is described in detail in: L<Paws::CloudHSMv2::CreateHsm>

Returns: a L<Paws::CloudHSMv2::CreateHsmResponse> instance

  Creates a new hardware security module (HSM) in the specified AWS
CloudHSM cluster.


=head2 DeleteCluster(ClusterId => Str)

Each argument is described in detail in: L<Paws::CloudHSMv2::DeleteCluster>

Returns: a L<Paws::CloudHSMv2::DeleteClusterResponse> instance

  Deletes the specified AWS CloudHSM cluster. Before you can delete a
cluster, you must delete all HSMs in the cluster. To see if the cluster
contains any HSMs, use DescribeClusters. To delete an HSM, use
DeleteHsm.


=head2 DeleteHsm(ClusterId => Str, [EniId => Str, EniIp => Str, HsmId => Str])

Each argument is described in detail in: L<Paws::CloudHSMv2::DeleteHsm>

Returns: a L<Paws::CloudHSMv2::DeleteHsmResponse> instance

  Deletes the specified HSM. To specify an HSM, you can use its
identifier (ID), the IP address of the HSM's elastic network interface
(ENI), or the ID of the HSM's ENI. You need to specify only one of
these values. To find these values, use DescribeClusters.


=head2 DescribeBackups([Filters => L<Paws::CloudHSMv2::Filters>, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudHSMv2::DescribeBackups>

Returns: a L<Paws::CloudHSMv2::DescribeBackupsResponse> instance

  Gets information about backups of AWS CloudHSM clusters.

This is a paginated operation, which means that each response might
contain only a subset of all the backups. When the response contains
only a subset of backups, it includes a C<NextToken> value. Use this
value in a subsequent C<DescribeBackups> request to get more backups.
When you receive a response with no C<NextToken> (or an empty or null
value), that means there are no more backups to get.


=head2 DescribeClusters([Filters => L<Paws::CloudHSMv2::Filters>, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudHSMv2::DescribeClusters>

Returns: a L<Paws::CloudHSMv2::DescribeClustersResponse> instance

  Gets information about AWS CloudHSM clusters.

This is a paginated operation, which means that each response might
contain only a subset of all the clusters. When the response contains
only a subset of clusters, it includes a C<NextToken> value. Use this
value in a subsequent C<DescribeClusters> request to get more clusters.
When you receive a response with no C<NextToken> (or an empty or null
value), that means there are no more clusters to get.


=head2 InitializeCluster(ClusterId => Str, SignedCert => Str, TrustAnchor => Str)

Each argument is described in detail in: L<Paws::CloudHSMv2::InitializeCluster>

Returns: a L<Paws::CloudHSMv2::InitializeClusterResponse> instance

  Claims an AWS CloudHSM cluster by submitting the cluster certificate
issued by your issuing certificate authority (CA) and the CA's root
certificate. Before you can claim a cluster, you must sign the
cluster's certificate signing request (CSR) with your issuing CA. To
get the cluster's CSR, use DescribeClusters.


=head2 ListTags(ResourceId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudHSMv2::ListTags>

Returns: a L<Paws::CloudHSMv2::ListTagsResponse> instance

  Gets a list of tags for the specified AWS CloudHSM cluster.

This is a paginated operation, which means that each response might
contain only a subset of all the tags. When the response contains only
a subset of tags, it includes a C<NextToken> value. Use this value in a
subsequent C<ListTags> request to get more tags. When you receive a
response with no C<NextToken> (or an empty or null value), that means
there are no more tags to get.


=head2 TagResource(ResourceId => Str, TagList => ArrayRef[L<Paws::CloudHSMv2::Tag>])

Each argument is described in detail in: L<Paws::CloudHSMv2::TagResource>

Returns: a L<Paws::CloudHSMv2::TagResourceResponse> instance

  Adds or overwrites one or more tags for the specified AWS CloudHSM
cluster.


=head2 UntagResource(ResourceId => Str, TagKeyList => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::CloudHSMv2::UntagResource>

Returns: a L<Paws::CloudHSMv2::UntagResourceResponse> instance

  Removes the specified tag or tags from the specified AWS CloudHSM
cluster.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

