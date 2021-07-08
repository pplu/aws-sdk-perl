package Paws::EMRContainers;
  use Moose;
  sub service { 'emr-containers' }
  sub signing_name { 'emr-containers' }
  sub version { '2020-10-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRContainers::CancelJobRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateManagedEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRContainers::CreateManagedEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVirtualCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRContainers::CreateVirtualCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteManagedEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRContainers::DeleteManagedEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVirtualCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRContainers::DeleteVirtualCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRContainers::DescribeJobRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeManagedEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRContainers::DescribeManagedEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVirtualCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRContainers::DescribeVirtualCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRContainers::ListJobRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListManagedEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRContainers::ListManagedEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRContainers::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVirtualClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRContainers::ListVirtualClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRContainers::StartJobRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRContainers::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMRContainers::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllJobRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobRuns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListJobRuns(@_, nextToken => $next_result->nextToken);
        push @{ $result->jobRuns }, @{ $next_result->jobRuns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'jobRuns') foreach (@{ $result->jobRuns });
        $result = $self->ListJobRuns(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'jobRuns') foreach (@{ $result->jobRuns });
    }

    return undef
  }
  sub ListAllManagedEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListManagedEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListManagedEndpoints(@_, nextToken => $next_result->nextToken);
        push @{ $result->endpoints }, @{ $next_result->endpoints };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'endpoints') foreach (@{ $result->endpoints });
        $result = $self->ListManagedEndpoints(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'endpoints') foreach (@{ $result->endpoints });
    }

    return undef
  }
  sub ListAllVirtualClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListVirtualClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListVirtualClusters(@_, nextToken => $next_result->nextToken);
        push @{ $result->virtualClusters }, @{ $next_result->virtualClusters };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'virtualClusters') foreach (@{ $result->virtualClusters });
        $result = $self->ListVirtualClusters(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'virtualClusters') foreach (@{ $result->virtualClusters });
    }

    return undef
  }


  sub operations { qw/CancelJobRun CreateManagedEndpoint CreateVirtualCluster DeleteManagedEndpoint DeleteVirtualCluster DescribeJobRun DescribeManagedEndpoint DescribeVirtualCluster ListJobRuns ListManagedEndpoints ListTagsForResource ListVirtualClusters StartJobRun TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers - Perl Interface to AWS Amazon EMR Containers

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('EMRContainers');
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

Amazon EMR on EKS provides a deployment option for Amazon EMR that
allows you to run open-source big data frameworks on Amazon Elastic
Kubernetes Service (Amazon EKS). With this deployment option, you can
focus on running analytics workloads while Amazon EMR on EKS builds,
configures, and manages containers for open-source applications. For
more information about Amazon EMR on EKS concepts and tasks, see What
is Amazon EMR on EKS
(https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/emr-eks.html).

I<Amazon EMR containers> is the API name for Amazon EMR on EKS. The
C<emr-containers> prefix is used in the following scenarios:

=over

=item *

It is the prefix in the CLI commands for Amazon EMR on EKS. For
example, C<aws emr-containers start-job-run>.

=item *

It is the prefix before IAM policy actions for Amazon EMR on EKS. For
example, C<"Action": [ "emr-containers:StartJobRun"]>. For more
information, see Policy actions for Amazon EMR on EKS
(https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-actions).

=item *

It is the prefix used in Amazon EMR on EKS service endpoints. For
example, C<emr-containers.us-east-2.amazonaws.com>. For more
information, see Amazon EMR on EKS Service Endpoints
(https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/service-quotas.html#service-endpoints).

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01>


=head1 METHODS

=head2 CancelJobRun

=over

=item Id => Str

=item VirtualClusterId => Str


=back

Each argument is described in detail in: L<Paws::EMRContainers::CancelJobRun>

Returns: a L<Paws::EMRContainers::CancelJobRunResponse> instance

Cancels a job run. A job run is a unit of work, such as a Spark jar,
PySpark script, or SparkSQL query, that you submit to Amazon EMR on
EKS.


=head2 CreateManagedEndpoint

=over

=item CertificateArn => Str

=item ClientToken => Str

=item ExecutionRoleArn => Str

=item Name => Str

=item ReleaseLabel => Str

=item Type => Str

=item VirtualClusterId => Str

=item [ConfigurationOverrides => L<Paws::EMRContainers::ConfigurationOverrides>]

=item [Tags => L<Paws::EMRContainers::TagMap>]


=back

Each argument is described in detail in: L<Paws::EMRContainers::CreateManagedEndpoint>

Returns: a L<Paws::EMRContainers::CreateManagedEndpointResponse> instance

Creates a managed endpoint. A managed endpoint is a gateway that
connects EMR Studio to Amazon EMR on EKS so that EMR Studio can
communicate with your virtual cluster.


=head2 CreateVirtualCluster

=over

=item ClientToken => Str

=item ContainerProvider => L<Paws::EMRContainers::ContainerProvider>

=item Name => Str

=item [Tags => L<Paws::EMRContainers::TagMap>]


=back

Each argument is described in detail in: L<Paws::EMRContainers::CreateVirtualCluster>

Returns: a L<Paws::EMRContainers::CreateVirtualClusterResponse> instance

Creates a virtual cluster. Virtual cluster is a managed entity on
Amazon EMR on EKS. You can create, describe, list and delete virtual
clusters. They do not consume any additional resource in your system. A
single virtual cluster maps to a single Kubernetes namespace. Given
this relationship, you can model virtual clusters the same way you
model Kubernetes namespaces to meet your requirements.


=head2 DeleteManagedEndpoint

=over

=item Id => Str

=item VirtualClusterId => Str


=back

Each argument is described in detail in: L<Paws::EMRContainers::DeleteManagedEndpoint>

Returns: a L<Paws::EMRContainers::DeleteManagedEndpointResponse> instance

Deletes a managed endpoint. A managed endpoint is a gateway that
connects EMR Studio to Amazon EMR on EKS so that EMR Studio can
communicate with your virtual cluster.


=head2 DeleteVirtualCluster

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::EMRContainers::DeleteVirtualCluster>

Returns: a L<Paws::EMRContainers::DeleteVirtualClusterResponse> instance

Deletes a virtual cluster. Virtual cluster is a managed entity on
Amazon EMR on EKS. You can create, describe, list and delete virtual
clusters. They do not consume any additional resource in your system. A
single virtual cluster maps to a single Kubernetes namespace. Given
this relationship, you can model virtual clusters the same way you
model Kubernetes namespaces to meet your requirements.


=head2 DescribeJobRun

=over

=item Id => Str

=item VirtualClusterId => Str


=back

Each argument is described in detail in: L<Paws::EMRContainers::DescribeJobRun>

Returns: a L<Paws::EMRContainers::DescribeJobRunResponse> instance

Displays detailed information about a job run. A job run is a unit of
work, such as a Spark jar, PySpark script, or SparkSQL query, that you
submit to Amazon EMR on EKS.


=head2 DescribeManagedEndpoint

=over

=item Id => Str

=item VirtualClusterId => Str


=back

Each argument is described in detail in: L<Paws::EMRContainers::DescribeManagedEndpoint>

Returns: a L<Paws::EMRContainers::DescribeManagedEndpointResponse> instance

Displays detailed information about a managed endpoint. A managed
endpoint is a gateway that connects EMR Studio to Amazon EMR on EKS so
that EMR Studio can communicate with your virtual cluster.


=head2 DescribeVirtualCluster

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::EMRContainers::DescribeVirtualCluster>

Returns: a L<Paws::EMRContainers::DescribeVirtualClusterResponse> instance

Displays detailed information about a specified virtual cluster.
Virtual cluster is a managed entity on Amazon EMR on EKS. You can
create, describe, list and delete virtual clusters. They do not consume
any additional resource in your system. A single virtual cluster maps
to a single Kubernetes namespace. Given this relationship, you can
model virtual clusters the same way you model Kubernetes namespaces to
meet your requirements.


=head2 ListJobRuns

=over

=item VirtualClusterId => Str

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [States => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EMRContainers::ListJobRuns>

Returns: a L<Paws::EMRContainers::ListJobRunsResponse> instance

Lists job runs based on a set of parameters. A job run is a unit of
work, such as a Spark jar, PySpark script, or SparkSQL query, that you
submit to Amazon EMR on EKS.


=head2 ListManagedEndpoints

=over

=item VirtualClusterId => Str

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [States => ArrayRef[Str|Undef]]

=item [Types => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EMRContainers::ListManagedEndpoints>

Returns: a L<Paws::EMRContainers::ListManagedEndpointsResponse> instance

Lists managed endpoints based on a set of parameters. A managed
endpoint is a gateway that connects EMR Studio to Amazon EMR on EKS so
that EMR Studio can communicate with your virtual cluster.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::EMRContainers::ListTagsForResource>

Returns: a L<Paws::EMRContainers::ListTagsForResourceResponse> instance

Lists the tags assigned to the resources.


=head2 ListVirtualClusters

=over

=item [ContainerProviderId => Str]

=item [ContainerProviderType => Str]

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [States => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EMRContainers::ListVirtualClusters>

Returns: a L<Paws::EMRContainers::ListVirtualClustersResponse> instance

Lists information about the specified virtual cluster. Virtual cluster
is a managed entity on Amazon EMR on EKS. You can create, describe,
list and delete virtual clusters. They do not consume any additional
resource in your system. A single virtual cluster maps to a single
Kubernetes namespace. Given this relationship, you can model virtual
clusters the same way you model Kubernetes namespaces to meet your
requirements.


=head2 StartJobRun

=over

=item ClientToken => Str

=item ExecutionRoleArn => Str

=item JobDriver => L<Paws::EMRContainers::JobDriver>

=item ReleaseLabel => Str

=item VirtualClusterId => Str

=item [ConfigurationOverrides => L<Paws::EMRContainers::ConfigurationOverrides>]

=item [Name => Str]

=item [Tags => L<Paws::EMRContainers::TagMap>]


=back

Each argument is described in detail in: L<Paws::EMRContainers::StartJobRun>

Returns: a L<Paws::EMRContainers::StartJobRunResponse> instance

Starts a job run. A job run is a unit of work, such as a Spark jar,
PySpark script, or SparkSQL query, that you submit to Amazon EMR on
EKS.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::EMRContainers::TagMap>


=back

Each argument is described in detail in: L<Paws::EMRContainers::TagResource>

Returns: a L<Paws::EMRContainers::TagResourceResponse> instance

Assigns tags to resources. A tag is a label that you assign to an AWS
resource. Each tag consists of a key and an optional value, both of
which you define. Tags enable you to categorize your AWS resources by
attributes such as purpose, owner, or environment. When you have many
resources of the same type, you can quickly identify a specific
resource based on the tags you've assigned to it. For example, you can
define a set of tags for your Amazon EMR on EKS clusters to help you
track each cluster's owner and stack level. We recommend that you
devise a consistent set of tag keys for each resource type. You can
then search and filter the resources based on the tags that you add.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::EMRContainers::UntagResource>

Returns: a L<Paws::EMRContainers::UntagResourceResponse> instance

Removes tags from resources.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllJobRuns(sub { },VirtualClusterId => Str, [CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, Name => Str, NextToken => Str, States => ArrayRef[Str|Undef]])

=head2 ListAllJobRuns(VirtualClusterId => Str, [CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, Name => Str, NextToken => Str, States => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - jobRuns, passing the object as the first parameter, and the string 'jobRuns' as the second parameter 

If not, it will return a a L<Paws::EMRContainers::ListJobRunsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllManagedEndpoints(sub { },VirtualClusterId => Str, [CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, States => ArrayRef[Str|Undef], Types => ArrayRef[Str|Undef]])

=head2 ListAllManagedEndpoints(VirtualClusterId => Str, [CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, States => ArrayRef[Str|Undef], Types => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - endpoints, passing the object as the first parameter, and the string 'endpoints' as the second parameter 

If not, it will return a a L<Paws::EMRContainers::ListManagedEndpointsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVirtualClusters(sub { },[ContainerProviderId => Str, ContainerProviderType => Str, CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, States => ArrayRef[Str|Undef]])

=head2 ListAllVirtualClusters([ContainerProviderId => Str, ContainerProviderType => Str, CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, States => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - virtualClusters, passing the object as the first parameter, and the string 'virtualClusters' as the second parameter 

If not, it will return a a L<Paws::EMRContainers::ListVirtualClustersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

