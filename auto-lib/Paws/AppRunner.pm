package Paws::AppRunner;
  use Moose;
  sub service { 'apprunner' }
  sub signing_name { 'apprunner' }
  sub version { '2020-05-15' }
  sub target_prefix { 'AppRunner' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateCustomDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::AssociateCustomDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAutoScalingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::CreateAutoScalingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::CreateConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::CreateService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAutoScalingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DeleteAutoScalingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DeleteConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DeleteService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAutoScalingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DescribeAutoScalingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCustomDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DescribeCustomDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DescribeService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateCustomDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DisassociateCustomDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAutoScalingConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::ListAutoScalingConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::ListConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::ListOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::ListServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PauseService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::PauseService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResumeService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::ResumeService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::StartDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::UpdateService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateCustomDomain CreateAutoScalingConfiguration CreateConnection CreateService DeleteAutoScalingConfiguration DeleteConnection DeleteService DescribeAutoScalingConfiguration DescribeCustomDomains DescribeService DisassociateCustomDomain ListAutoScalingConfigurations ListConnections ListOperations ListServices ListTagsForResource PauseService ResumeService StartDeployment TagResource UntagResource UpdateService / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner - Perl Interface to AWS AWS App Runner

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AppRunner');
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

AWS App Runner

AWS App Runner is an application service that provides a fast, simple,
and cost-effective way to go directly from an existing container image
or source code to a running service in the AWS cloud in seconds. You
don't need to learn new technologies, decide which compute service to
use, or understand how to provision and configure AWS resources.

App Runner connects directly to your container registry or source code
repository. It provides an automatic delivery pipeline with fully
managed operations, high performance, scalability, and security.

For more information about App Runner, see the AWS App Runner Developer
Guide (https://docs.aws.amazon.com/apprunner/latest/dg/). For release
information, see the AWS App Runner Release Notes
(https://docs.aws.amazon.com/apprunner/latest/relnotes/).

To install the Software Development Kits (SDKs), Integrated Development
Environment (IDE) Toolkits, and command line tools that you can use to
access the API, see Tools for Amazon Web Services
(http://aws.amazon.com/tools/).

B<Endpoints>

For a list of Region-specific endpoints that App Runner supports, see
AWS App Runner endpoints and quotas
(https://docs.aws.amazon.com/general/latest/gr/apprunner.html) in the
I<AWS General Reference>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15>


=head1 METHODS

=head2 AssociateCustomDomain

=over

=item DomainName => Str

=item ServiceArn => Str

=item [EnableWWWSubdomain => Bool]


=back

Each argument is described in detail in: L<Paws::AppRunner::AssociateCustomDomain>

Returns: a L<Paws::AppRunner::AssociateCustomDomainResponse> instance

Associate your own domain name with the AWS App Runner subdomain URL of
your App Runner service.

After you call C<AssociateCustomDomain> and receive a successful
response, use the information in the CustomDomain record that's
returned to add CNAME records to your Domain Name System (DNS). For
each mapped domain name, add a mapping to the target App Runner
subdomain and one or more certificate validation records. App Runner
then performs DNS validation to verify that you own or control the
domain name that you associated. App Runner tracks domain validity in a
certificate stored in AWS Certificate Manager (ACM)
(https://docs.aws.amazon.com/acm/latest/userguide).


=head2 CreateAutoScalingConfiguration

=over

=item AutoScalingConfigurationName => Str

=item [MaxConcurrency => Int]

=item [MaxSize => Int]

=item [MinSize => Int]

=item [Tags => ArrayRef[L<Paws::AppRunner::Tag>]]


=back

Each argument is described in detail in: L<Paws::AppRunner::CreateAutoScalingConfiguration>

Returns: a L<Paws::AppRunner::CreateAutoScalingConfigurationResponse> instance

Create an AWS App Runner automatic scaling configuration resource. App
Runner requires this resource when you create App Runner services that
require non-default auto scaling settings. You can share an auto
scaling configuration across multiple services.

Create multiple revisions of a configuration by using the same
C<AutoScalingConfigurationName> and different
C<AutoScalingConfigurationRevision> values. When you create a service,
you can set it to use the latest active revision of an auto scaling
configuration or a specific revision.

Configure a higher C<MinSize> to increase the spread of your App Runner
service over more Availability Zones in the AWS Region. The tradeoff is
a higher minimal cost.

Configure a lower C<MaxSize> to control your cost. The tradeoff is
lower responsiveness during peak demand.


=head2 CreateConnection

=over

=item ConnectionName => Str

=item ProviderType => Str

=item [Tags => ArrayRef[L<Paws::AppRunner::Tag>]]


=back

Each argument is described in detail in: L<Paws::AppRunner::CreateConnection>

Returns: a L<Paws::AppRunner::CreateConnectionResponse> instance

Create an AWS App Runner connection resource. App Runner requires a
connection resource when you create App Runner services that access
private repositories from certain third-party providers. You can share
a connection across multiple services.

A connection resource is needed to access GitHub repositories. GitHub
requires a user interface approval process through the App Runner
console before you can use the connection.


=head2 CreateService

=over

=item ServiceName => Str

=item SourceConfiguration => L<Paws::AppRunner::SourceConfiguration>

=item [AutoScalingConfigurationArn => Str]

=item [EncryptionConfiguration => L<Paws::AppRunner::EncryptionConfiguration>]

=item [HealthCheckConfiguration => L<Paws::AppRunner::HealthCheckConfiguration>]

=item [InstanceConfiguration => L<Paws::AppRunner::InstanceConfiguration>]

=item [Tags => ArrayRef[L<Paws::AppRunner::Tag>]]


=back

Each argument is described in detail in: L<Paws::AppRunner::CreateService>

Returns: a L<Paws::AppRunner::CreateServiceResponse> instance

Create an AWS App Runner service. After the service is created, the
action also automatically starts a deployment.

This is an asynchronous operation. On a successful call, you can use
the returned C<OperationId> and the ListOperations
(https://docs.aws.amazon.com/apprunner/latest/api/API_ListOperations.html)
call to track the operation's progress.


=head2 DeleteAutoScalingConfiguration

=over

=item AutoScalingConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::DeleteAutoScalingConfiguration>

Returns: a L<Paws::AppRunner::DeleteAutoScalingConfigurationResponse> instance

Delete an AWS App Runner automatic scaling configuration resource. You
can delete a specific revision or the latest active revision. You can't
delete a configuration that's used by one or more App Runner services.


=head2 DeleteConnection

=over

=item ConnectionArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::DeleteConnection>

Returns: a L<Paws::AppRunner::DeleteConnectionResponse> instance

Delete an AWS App Runner connection. You must first ensure that there
are no running App Runner services that use this connection. If there
are any, the C<DeleteConnection> action fails.


=head2 DeleteService

=over

=item ServiceArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::DeleteService>

Returns: a L<Paws::AppRunner::DeleteServiceResponse> instance

Delete an AWS App Runner service.

This is an asynchronous operation. On a successful call, you can use
the returned C<OperationId> and the ListOperations call to track the
operation's progress.


=head2 DescribeAutoScalingConfiguration

=over

=item AutoScalingConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::DescribeAutoScalingConfiguration>

Returns: a L<Paws::AppRunner::DescribeAutoScalingConfigurationResponse> instance

Return a full description of an AWS App Runner automatic scaling
configuration resource.


=head2 DescribeCustomDomains

=over

=item ServiceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppRunner::DescribeCustomDomains>

Returns: a L<Paws::AppRunner::DescribeCustomDomainsResponse> instance

Return a description of custom domain names that are associated with an
AWS App Runner service.


=head2 DescribeService

=over

=item ServiceArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::DescribeService>

Returns: a L<Paws::AppRunner::DescribeServiceResponse> instance

Return a full description of an AWS App Runner service.


=head2 DisassociateCustomDomain

=over

=item DomainName => Str

=item ServiceArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::DisassociateCustomDomain>

Returns: a L<Paws::AppRunner::DisassociateCustomDomainResponse> instance

Disassociate a custom domain name from an AWS App Runner service.

Certificates tracking domain validity are associated with a custom
domain and are stored in AWS Certificate Manager (ACM)
(https://docs.aws.amazon.com/acm/latest/userguide). These certificates
aren't deleted as part of this action. App Runner delays certificate
deletion for 30 days after a domain is disassociated from your service.


=head2 ListAutoScalingConfigurations

=over

=item [AutoScalingConfigurationName => Str]

=item [LatestOnly => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppRunner::ListAutoScalingConfigurations>

Returns: a L<Paws::AppRunner::ListAutoScalingConfigurationsResponse> instance

Returns a list of AWS App Runner automatic scaling configurations in
your AWS account. You can query the revisions for a specific
configuration name or the revisions for all configurations in your
account. You can optionally query only the latest revision of each
requested name.


=head2 ListConnections

=over

=item [ConnectionName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppRunner::ListConnections>

Returns: a L<Paws::AppRunner::ListConnectionsResponse> instance

Returns a list of AWS App Runner connections that are associated with
your AWS account.


=head2 ListOperations

=over

=item ServiceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppRunner::ListOperations>

Returns: a L<Paws::AppRunner::ListOperationsResponse> instance

Return a list of operations that occurred on an AWS App Runner service.

The resulting list of OperationSummary objects is sorted in reverse
chronological order. The first object on the list represents the last
started operation.


=head2 ListServices

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppRunner::ListServices>

Returns: a L<Paws::AppRunner::ListServicesResponse> instance

Returns a list of running AWS App Runner services in your AWS account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::ListTagsForResource>

Returns: a L<Paws::AppRunner::ListTagsForResourceResponse> instance

List tags that are associated with for an AWS App Runner resource. The
response contains a list of tag key-value pairs.


=head2 PauseService

=over

=item ServiceArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::PauseService>

Returns: a L<Paws::AppRunner::PauseServiceResponse> instance

Pause an active AWS App Runner service. App Runner reduces compute
capacity for the service to zero and loses state (for example,
ephemeral storage is removed).

This is an asynchronous operation. On a successful call, you can use
the returned C<OperationId> and the ListOperations call to track the
operation's progress.


=head2 ResumeService

=over

=item ServiceArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::ResumeService>

Returns: a L<Paws::AppRunner::ResumeServiceResponse> instance

Resume an active AWS App Runner service. App Runner provisions compute
capacity for the service.

This is an asynchronous operation. On a successful call, you can use
the returned C<OperationId> and the ListOperations call to track the
operation's progress.


=head2 StartDeployment

=over

=item ServiceArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::StartDeployment>

Returns: a L<Paws::AppRunner::StartDeploymentResponse> instance

Initiate a manual deployment of the latest commit in a source code
repository or the latest image in a source image repository to an AWS
App Runner service.

For a source code repository, App Runner retrieves the commit and
builds a Docker image. For a source image repository, App Runner
retrieves the latest Docker image. In both cases, App Runner then
deploys the new image to your service and starts a new container
instance.

This is an asynchronous operation. On a successful call, you can use
the returned C<OperationId> and the ListOperations call to track the
operation's progress.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::AppRunner::Tag>]


=back

Each argument is described in detail in: L<Paws::AppRunner::TagResource>

Returns: a L<Paws::AppRunner::TagResourceResponse> instance

Add tags to, or update the tag values of, an App Runner resource. A tag
is a key-value pair.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AppRunner::UntagResource>

Returns: a L<Paws::AppRunner::UntagResourceResponse> instance

Remove tags from an App Runner resource.


=head2 UpdateService

=over

=item ServiceArn => Str

=item [AutoScalingConfigurationArn => Str]

=item [HealthCheckConfiguration => L<Paws::AppRunner::HealthCheckConfiguration>]

=item [InstanceConfiguration => L<Paws::AppRunner::InstanceConfiguration>]

=item [SourceConfiguration => L<Paws::AppRunner::SourceConfiguration>]


=back

Each argument is described in detail in: L<Paws::AppRunner::UpdateService>

Returns: a L<Paws::AppRunner::UpdateServiceResponse> instance

Update an AWS App Runner service. You can update the source
configuration and instance configuration of the service. You can also
update the ARN of the auto scaling configuration resource that's
associated with the service. However, you can't change the name or the
encryption configuration of the service. These can be set only when you
create the service.

To update the tags applied to your service, use the separate actions
TagResource and UntagResource.

This is an asynchronous operation. On a successful call, you can use
the returned C<OperationId> and the ListOperations call to track the
operation's progress.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

