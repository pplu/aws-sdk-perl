package Paws::GlobalAccelerator;
  use Moose;
  sub service { 'globalaccelerator' }
  sub signing_name { 'globalaccelerator' }
  sub version { '2018-08-08' }
  sub target_prefix { 'GlobalAccelerator_V20180706' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateAccelerator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::CreateAccelerator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEndpointGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::CreateEndpointGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateListener {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::CreateListener', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccelerator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::DeleteAccelerator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEndpointGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::DeleteEndpointGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteListener {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::DeleteListener', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccelerator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::DescribeAccelerator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAcceleratorAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::DescribeAcceleratorAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpointGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::DescribeEndpointGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeListener {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::DescribeListener', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccelerators {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::ListAccelerators', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEndpointGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::ListEndpointGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListListeners {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::ListListeners', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccelerator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::UpdateAccelerator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAcceleratorAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::UpdateAcceleratorAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEndpointGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::UpdateEndpointGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateListener {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::UpdateListener', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAccelerators {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccelerators(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccelerators(@_, NextToken => $next_result->NextToken);
        push @{ $result->Accelerators }, @{ $next_result->Accelerators };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Accelerators') foreach (@{ $result->Accelerators });
        $result = $self->ListAccelerators(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Accelerators') foreach (@{ $result->Accelerators });
    }

    return undef
  }
  sub ListAllEndpointGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEndpointGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEndpointGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->EndpointGroups }, @{ $next_result->EndpointGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EndpointGroups') foreach (@{ $result->EndpointGroups });
        $result = $self->ListEndpointGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EndpointGroups') foreach (@{ $result->EndpointGroups });
    }

    return undef
  }
  sub ListAllListeners {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListListeners(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListListeners(@_, NextToken => $next_result->NextToken);
        push @{ $result->Listeners }, @{ $next_result->Listeners };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Listeners') foreach (@{ $result->Listeners });
        $result = $self->ListListeners(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Listeners') foreach (@{ $result->Listeners });
    }

    return undef
  }


  sub operations { qw/CreateAccelerator CreateEndpointGroup CreateListener DeleteAccelerator DeleteEndpointGroup DeleteListener DescribeAccelerator DescribeAcceleratorAttributes DescribeEndpointGroup DescribeListener ListAccelerators ListEndpointGroups ListListeners UpdateAccelerator UpdateAcceleratorAttributes UpdateEndpointGroup UpdateListener / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator - Perl Interface to AWS AWS Global Accelerator

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('GlobalAccelerator');
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

AWS Global Accelerator

This is the I<AWS Global Accelerator API Reference>. This guide is for
developers who need detailed information about AWS Global Accelerator
API actions, data types, and errors. For more information about Global
Accelerator features, see the AWS Global Accelerator Developer Guide
(https://docs.aws.amazon.com/global-accelerator/latest/dg/Welcome.html).

AWS Global Accelerator is a network layer service in which you create
accelerators to improve availability and performance for internet
applications used by a global audience.

Global Accelerator provides you with static IP addresses that you
associate with your accelerator. These IP addresses are anycast from
the AWS edge network and distribute incoming application traffic across
multiple endpoint resources in multiple AWS Regions, which increases
the availability of your applications. Endpoints can be Elastic IP
addresses, Network Load Balancers, and Application Load Balancers that
are located in one AWS Region or multiple Regions.

Global Accelerator uses the AWS global network to route traffic to the
optimal regional endpoint based on health, client location, and
policies that you configure. The service reacts instantly to changes in
health or configuration to ensure that internet traffic from clients is
directed to only healthy endpoints.

Global Accelerator includes components that work together to help you
improve performance and availability for your applications:

=over

=item Static IP address

AWS Global Accelerator provides you with a set of static IP addresses
which are anycast from the AWS edge network and serve as the single
fixed entry points for your clients. If you already have Elastic Load
Balancing or Elastic IP address resources set up for your applications,
you can easily add those to Global Accelerator to allow the resources
to be accessed by a Global Accelerator static IP address.

=item Accelerator

An accelerator directs traffic to optimal endpoints over the AWS global
network to improve availability and performance for your internet
applications that have a global audience. Each accelerator includes one
or more listeners.

=item Network zone

A network zone services the static IP addresses for your accelerator
from a unique IP subnet. Similar to an AWS Availability Zone, a network
zone is an isolated unit with its own set of physical infrastructure.
When you configure an accelerator, Global Accelerator allocates two
IPv4 addresses for it. If one IP address from a network zone becomes
unavailable due to IP address blocking by certain client networks, or
network disruptions, then client applications can retry on the healthy
static IP address from the other isolated network zone.

=item Listener

A listener processes inbound connections from clients to Global
Accelerator, based on the protocol and port that you configure. Each
listener has one or more endpoint groups associated with it, and
traffic is forwarded to endpoints in one of the groups. You associate
endpoint groups with listeners by specifying the Regions that you want
to distribute traffic to. Traffic is distributed to optimal endpoints
within the endpoint groups associated with a listener.

=item Endpoint group

Each endpoint group is associated with a specific AWS Region. Endpoint
groups include one or more endpoints in the Region. You can increase or
reduce the percentage of traffic that would be otherwise directed to an
endpoint group by adjusting a setting called a I<traffic dial>. The
traffic dial lets you easily do performance testing or blue/green
deployment testing for new releases across different AWS Regions, for
example.

=item Endpoint

An endpoint is an Elastic IP address, Network Load Balancer, or
Application Load Balancer. Traffic is routed to endpoints based on
several factors, including the geo-proximity to the user, the health of
the endpoint, and the configuration options that you choose, such as
endpoint weights. For each endpoint, you can configure weights, which
are numbers that you can use to specify the proportion of traffic to
route to each one. This can be useful, for example, to do performance
testing within a Region.

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08>


=head1 METHODS

=head2 CreateAccelerator

=over

=item IdempotencyToken => Str

=item Name => Str

=item [Enabled => Bool]

=item [IpAddressType => Str]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::CreateAccelerator>

Returns: a L<Paws::GlobalAccelerator::CreateAcceleratorResponse> instance

Create an accelerator. An accelerator includes one or more listeners
that process inbound connections and direct traffic to one or more
endpoint groups, each of which includes endpoints, such as Network Load
Balancers. To see an AWS CLI example of creating an accelerator, scroll
down to B<Example>.


=head2 CreateEndpointGroup

=over

=item EndpointGroupRegion => Str

=item IdempotencyToken => Str

=item ListenerArn => Str

=item [EndpointConfigurations => ArrayRef[L<Paws::GlobalAccelerator::EndpointConfiguration>]]

=item [HealthCheckIntervalSeconds => Int]

=item [HealthCheckPath => Str]

=item [HealthCheckPort => Int]

=item [HealthCheckProtocol => Str]

=item [ThresholdCount => Int]

=item [TrafficDialPercentage => Num]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::CreateEndpointGroup>

Returns: a L<Paws::GlobalAccelerator::CreateEndpointGroupResponse> instance

Create an endpoint group for the specified listener. An endpoint group
is a collection of endpoints in one AWS Region. To see an AWS CLI
example of creating an endpoint group, scroll down to B<Example>.


=head2 CreateListener

=over

=item AcceleratorArn => Str

=item IdempotencyToken => Str

=item PortRanges => ArrayRef[L<Paws::GlobalAccelerator::PortRange>]

=item Protocol => Str

=item [ClientAffinity => Str]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::CreateListener>

Returns: a L<Paws::GlobalAccelerator::CreateListenerResponse> instance

Create a listener to process inbound connections from clients to an
accelerator. Connections arrive to assigned static IP addresses on a
port, port range, or list of port ranges that you specify. To see an
AWS CLI example of creating a listener, scroll down to B<Example>.


=head2 DeleteAccelerator

=over

=item AcceleratorArn => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::DeleteAccelerator>

Returns: nothing

Delete an accelerator. Note: before you can delete an accelerator, you
must disable it and remove all dependent resources (listeners and
endpoint groups).


=head2 DeleteEndpointGroup

=over

=item EndpointGroupArn => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::DeleteEndpointGroup>

Returns: nothing

Delete an endpoint group from a listener.


=head2 DeleteListener

=over

=item ListenerArn => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::DeleteListener>

Returns: nothing

Delete a listener from an accelerator.


=head2 DescribeAccelerator

=over

=item AcceleratorArn => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::DescribeAccelerator>

Returns: a L<Paws::GlobalAccelerator::DescribeAcceleratorResponse> instance

Describe an accelerator. To see an AWS CLI example of describing an
accelerator, scroll down to B<Example>.


=head2 DescribeAcceleratorAttributes

=over

=item [AcceleratorArn => Str]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::DescribeAcceleratorAttributes>

Returns: a L<Paws::GlobalAccelerator::DescribeAcceleratorAttributesResponse> instance

Describe the attributes of an accelerator.


=head2 DescribeEndpointGroup

=over

=item EndpointGroupArn => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::DescribeEndpointGroup>

Returns: a L<Paws::GlobalAccelerator::DescribeEndpointGroupResponse> instance

Describe an endpoint group.


=head2 DescribeListener

=over

=item ListenerArn => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::DescribeListener>

Returns: a L<Paws::GlobalAccelerator::DescribeListenerResponse> instance

Describe a listener.


=head2 ListAccelerators

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::ListAccelerators>

Returns: a L<Paws::GlobalAccelerator::ListAcceleratorsResponse> instance

List the accelerators for an AWS account.


=head2 ListEndpointGroups

=over

=item ListenerArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::ListEndpointGroups>

Returns: a L<Paws::GlobalAccelerator::ListEndpointGroupsResponse> instance

List the endpoint groups that are associated with a listener.


=head2 ListListeners

=over

=item AcceleratorArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::ListListeners>

Returns: a L<Paws::GlobalAccelerator::ListListenersResponse> instance

List the listeners for an accelerator.


=head2 UpdateAccelerator

=over

=item AcceleratorArn => Str

=item [Enabled => Bool]

=item [IpAddressType => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::UpdateAccelerator>

Returns: a L<Paws::GlobalAccelerator::UpdateAcceleratorResponse> instance

Update an accelerator.


=head2 UpdateAcceleratorAttributes

=over

=item [AcceleratorArn => Str]

=item [FlowLogsEnabled => Bool]

=item [FlowLogsS3Bucket => Str]

=item [FlowLogsS3Prefix => Str]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::UpdateAcceleratorAttributes>

Returns: a L<Paws::GlobalAccelerator::UpdateAcceleratorAttributesResponse> instance

Update the attributes for an accelerator. To see an AWS CLI example of
updating an accelerator to enable flow logs, scroll down to B<Example>.


=head2 UpdateEndpointGroup

=over

=item EndpointGroupArn => Str

=item [EndpointConfigurations => ArrayRef[L<Paws::GlobalAccelerator::EndpointConfiguration>]]

=item [HealthCheckIntervalSeconds => Int]

=item [HealthCheckPath => Str]

=item [HealthCheckPort => Int]

=item [HealthCheckProtocol => Str]

=item [ThresholdCount => Int]

=item [TrafficDialPercentage => Num]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::UpdateEndpointGroup>

Returns: a L<Paws::GlobalAccelerator::UpdateEndpointGroupResponse> instance

Update an endpoint group. To see an AWS CLI example of updating an
endpoint group, scroll down to B<Example>.


=head2 UpdateListener

=over

=item ListenerArn => Str

=item [ClientAffinity => Str]

=item [PortRanges => ArrayRef[L<Paws::GlobalAccelerator::PortRange>]]

=item [Protocol => Str]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::UpdateListener>

Returns: a L<Paws::GlobalAccelerator::UpdateListenerResponse> instance

Update a listener.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAccelerators(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllAccelerators([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Accelerators, passing the object as the first parameter, and the string 'Accelerators' as the second parameter 

If not, it will return a a L<Paws::GlobalAccelerator::ListAcceleratorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEndpointGroups(sub { },ListenerArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllEndpointGroups(ListenerArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EndpointGroups, passing the object as the first parameter, and the string 'EndpointGroups' as the second parameter 

If not, it will return a a L<Paws::GlobalAccelerator::ListEndpointGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllListeners(sub { },AcceleratorArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllListeners(AcceleratorArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Listeners, passing the object as the first parameter, and the string 'Listeners' as the second parameter 

If not, it will return a a L<Paws::GlobalAccelerator::ListListenersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

