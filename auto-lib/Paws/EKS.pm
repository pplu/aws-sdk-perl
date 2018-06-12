package Paws::EKS;
  use Moose;
  sub service { 'eks' }
  sub signing_name { 'eks' }
  sub version { '2017-11-01' }
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
    my $call_object = $self->new_with_coercions('Paws::EKS::CreateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DeleteCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DescribeCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::ListClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateCluster DeleteCluster DescribeCluster ListClusters / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS - Perl Interface to AWS Amazon Elastic Container Service for Kubernetes

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('EKS');
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

Amazon Elastic Container Service for Kubernetes (Amazon EKS) is a
managed service that makes it easy for you to run Kubernetes on AWS
without needing to stand up or maintain your own Kubernetes control
plane. Kubernetes is an open-source system for automating the
deployment, scaling, and management of containerized applications.

Amazon EKS runs three Kubernetes control plane instances across three
Availability Zones to ensure high availability. Amazon EKS
automatically detects and replaces unhealthy control plane instances,
and it provides automated version upgrades and patching for them.

Amazon EKS is also integrated with many AWS services to provide
scalability and security for your applications, including the
following:

=over

=item *

Elastic Load Balancing for load distribution

=item *

IAM for authentication

=item *

Amazon VPC for isolation

=back

Amazon EKS runs up to date versions of the open-source Kubernetes
software, so you can use all the existing plugins and tooling from the
Kubernetes community. Applications running on Amazon EKS are fully
compatible with applications running on any standard Kubernetes
environment, whether running in on-premises data centers or public
clouds. This means that you can easily migrate any standard Kubernetes
application to Amazon EKS without any code modification required.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01>

=head1 METHODS

=head2 CreateCluster

=over

=item Name => Str

=item ResourcesVpcConfig => L<Paws::EKS::VpcConfigRequest>

=item RoleArn => Str

=item [ClientRequestToken => Str]

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::EKS::CreateCluster>

Returns: a L<Paws::EKS::CreateClusterResponse> instance

Creates an Amazon EKS control plane.

The Amazon EKS control plane consists of control plane instances that
run the Kubernetes software, like C<etcd> and the API server. The
control plane runs in an account managed by AWS, and the Kubernetes API
is exposed via the Amazon EKS API server endpoint.

Amazon EKS worker nodes run in your AWS account and connect to your
cluster's control plane via the Kubernetes API server endpoint and a
certificate file that is created for your cluster.

The cluster control plane is provisioned across multiple Availability
Zones and fronted by an Elastic Load Balancing Network Load Balancer.
Amazon EKS also provisions elastic network interfaces in your VPC
subnets to provide connectivity from the control plane instances to the
worker nodes (for example, to support C<kubectl exec>, C<logs>, and
C<proxy> data flows).

After you create an Amazon EKS cluster, you must configure your
Kubernetes tooling to communicate with the API server and launch worker
nodes into your cluster. For more information, see Managing Cluster
Authentication
(http://docs.aws.amazon.com/eks/latest/userguide/managing-auth.html)
and Launching Amazon EKS Worker Nodes
(http://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html)in
the I<Amazon EKS User Guide>.


=head2 DeleteCluster

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::EKS::DeleteCluster>

Returns: a L<Paws::EKS::DeleteClusterResponse> instance

Deletes the Amazon EKS cluster control plane.

If you have active services in your cluster that are associated with a
load balancer, you must delete those services before deleting the
cluster so that the load balancers are deleted properly. Otherwise, you
can have orphaned resources in your VPC that prevent you from being
able to delete the VPC. For more information, see Deleting a Cluster
(http://docs.aws.amazon.com/eks/latest/userguide/delete-cluster.html)
in the I<Amazon EKS User Guide>.


=head2 DescribeCluster

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::EKS::DescribeCluster>

Returns: a L<Paws::EKS::DescribeClusterResponse> instance

Returns descriptive information about an Amazon EKS cluster.

The API server endpoint and certificate authority data returned by this
operation are required for C<kubelet> and C<kubectl> to communicate
with your Kubernetes API server. For more information, see Create a
kubeconfig for Amazon EKS
(http://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html).

The API server endpoint and certificate authority data are not
available until the cluster reaches the C<ACTIVE> state.


=head2 ListClusters

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EKS::ListClusters>

Returns: a L<Paws::EKS::ListClustersResponse> instance

Lists the Amazon EKS clusters in your AWS account in the specified
region.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

