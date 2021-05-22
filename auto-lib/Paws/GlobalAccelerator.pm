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

  
  sub AddCustomRoutingEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::AddCustomRoutingEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdvertiseByoipCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::AdvertiseByoipCidr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AllowCustomRoutingTraffic {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::AllowCustomRoutingTraffic', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAccelerator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::CreateAccelerator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCustomRoutingAccelerator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::CreateCustomRoutingAccelerator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCustomRoutingEndpointGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::CreateCustomRoutingEndpointGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCustomRoutingListener {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::CreateCustomRoutingListener', @_);
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
  sub DeleteCustomRoutingAccelerator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::DeleteCustomRoutingAccelerator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCustomRoutingEndpointGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::DeleteCustomRoutingEndpointGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCustomRoutingListener {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::DeleteCustomRoutingListener', @_);
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
  sub DenyCustomRoutingTraffic {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::DenyCustomRoutingTraffic', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeprovisionByoipCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::DeprovisionByoipCidr', @_);
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
  sub DescribeCustomRoutingAccelerator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::DescribeCustomRoutingAccelerator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCustomRoutingAcceleratorAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::DescribeCustomRoutingAcceleratorAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCustomRoutingEndpointGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::DescribeCustomRoutingEndpointGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCustomRoutingListener {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::DescribeCustomRoutingListener', @_);
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
  sub ListByoipCidrs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::ListByoipCidrs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCustomRoutingAccelerators {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::ListCustomRoutingAccelerators', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCustomRoutingEndpointGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::ListCustomRoutingEndpointGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCustomRoutingListeners {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::ListCustomRoutingListeners', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCustomRoutingPortMappings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::ListCustomRoutingPortMappings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCustomRoutingPortMappingsByDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::ListCustomRoutingPortMappingsByDestination', @_);
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
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ProvisionByoipCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::ProvisionByoipCidr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveCustomRoutingEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::RemoveCustomRoutingEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::UntagResource', @_);
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
  sub UpdateCustomRoutingAccelerator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::UpdateCustomRoutingAccelerator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCustomRoutingAcceleratorAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::UpdateCustomRoutingAcceleratorAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCustomRoutingListener {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::UpdateCustomRoutingListener', @_);
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
  sub WithdrawByoipCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlobalAccelerator::WithdrawByoipCidr', @_);
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
  sub ListAllByoipCidrs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListByoipCidrs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListByoipCidrs(@_, NextToken => $next_result->NextToken);
        push @{ $result->ByoipCidrs }, @{ $next_result->ByoipCidrs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ByoipCidrs') foreach (@{ $result->ByoipCidrs });
        $result = $self->ListByoipCidrs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ByoipCidrs') foreach (@{ $result->ByoipCidrs });
    }

    return undef
  }
  sub ListAllCustomRoutingAccelerators {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCustomRoutingAccelerators(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCustomRoutingAccelerators(@_, NextToken => $next_result->NextToken);
        push @{ $result->Accelerators }, @{ $next_result->Accelerators };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Accelerators') foreach (@{ $result->Accelerators });
        $result = $self->ListCustomRoutingAccelerators(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Accelerators') foreach (@{ $result->Accelerators });
    }

    return undef
  }
  sub ListAllCustomRoutingListeners {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCustomRoutingListeners(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCustomRoutingListeners(@_, NextToken => $next_result->NextToken);
        push @{ $result->Listeners }, @{ $next_result->Listeners };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Listeners') foreach (@{ $result->Listeners });
        $result = $self->ListCustomRoutingListeners(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Listeners') foreach (@{ $result->Listeners });
    }

    return undef
  }
  sub ListAllCustomRoutingPortMappings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCustomRoutingPortMappings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCustomRoutingPortMappings(@_, NextToken => $next_result->NextToken);
        push @{ $result->PortMappings }, @{ $next_result->PortMappings };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PortMappings') foreach (@{ $result->PortMappings });
        $result = $self->ListCustomRoutingPortMappings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PortMappings') foreach (@{ $result->PortMappings });
    }

    return undef
  }
  sub ListAllCustomRoutingPortMappingsByDestination {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCustomRoutingPortMappingsByDestination(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCustomRoutingPortMappingsByDestination(@_, NextToken => $next_result->NextToken);
        push @{ $result->DestinationPortMappings }, @{ $next_result->DestinationPortMappings };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DestinationPortMappings') foreach (@{ $result->DestinationPortMappings });
        $result = $self->ListCustomRoutingPortMappingsByDestination(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DestinationPortMappings') foreach (@{ $result->DestinationPortMappings });
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


  sub operations { qw/AddCustomRoutingEndpoints AdvertiseByoipCidr AllowCustomRoutingTraffic CreateAccelerator CreateCustomRoutingAccelerator CreateCustomRoutingEndpointGroup CreateCustomRoutingListener CreateEndpointGroup CreateListener DeleteAccelerator DeleteCustomRoutingAccelerator DeleteCustomRoutingEndpointGroup DeleteCustomRoutingListener DeleteEndpointGroup DeleteListener DenyCustomRoutingTraffic DeprovisionByoipCidr DescribeAccelerator DescribeAcceleratorAttributes DescribeCustomRoutingAccelerator DescribeCustomRoutingAcceleratorAttributes DescribeCustomRoutingEndpointGroup DescribeCustomRoutingListener DescribeEndpointGroup DescribeListener ListAccelerators ListByoipCidrs ListCustomRoutingAccelerators ListCustomRoutingEndpointGroups ListCustomRoutingListeners ListCustomRoutingPortMappings ListCustomRoutingPortMappingsByDestination ListEndpointGroups ListListeners ListTagsForResource ProvisionByoipCidr RemoveCustomRoutingEndpoints TagResource UntagResource UpdateAccelerator UpdateAcceleratorAttributes UpdateCustomRoutingAccelerator UpdateCustomRoutingAcceleratorAttributes UpdateCustomRoutingListener UpdateEndpointGroup UpdateListener WithdrawByoipCidr / }

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

AWS Global Accelerator is a service in which you create I<accelerators>
to improve the performance of your applications for local and global
users. Depending on the type of accelerator you choose, you can gain
additional benefits.

=over

=item *

By using a standard accelerator, you can improve availability of your
internet applications that are used by a global audience. With a
standard accelerator, Global Accelerator directs traffic to optimal
endpoints over the AWS global network.

=item *

For other scenarios, you might choose a custom routing accelerator.
With a custom routing accelerator, you can use application logic to
directly map one or more users to a specific endpoint among many
endpoints.

=back

Global Accelerator is a global service that supports endpoints in
multiple AWS Regions but you must specify the US West (Oregon) Region
to create or update accelerators.

By default, Global Accelerator provides you with two static IP
addresses that you associate with your accelerator. With a standard
accelerator, instead of using the IP addresses that Global Accelerator
provides, you can configure these entry points to be IPv4 addresses
from your own IP address ranges that you bring to Global Accelerator.
The static IP addresses are anycast from the AWS edge network. For a
standard accelerator, they distribute incoming application traffic
across multiple endpoint resources in multiple AWS Regions, which
increases the availability of your applications. Endpoints for standard
accelerators can be Network Load Balancers, Application Load Balancers,
Amazon EC2 instances, or Elastic IP addresses that are located in one
AWS Region or multiple Regions. For custom routing accelerators, you
map traffic that arrives to the static IP addresses to specific Amazon
EC2 servers in endpoints that are virtual private cloud (VPC) subnets.

The static IP addresses remain assigned to your accelerator for as long
as it exists, even if you disable the accelerator and it no longer
accepts or routes traffic. However, when you I<delete> an accelerator,
you lose the static IP addresses that are assigned to it, so you can no
longer route traffic by using them. You can use IAM policies like
tag-based permissions with Global Accelerator to limit the users who
have permissions to delete an accelerator. For more information, see
Tag-based policies
(https://docs.aws.amazon.com/global-accelerator/latest/dg/access-control-manage-access-tag-policies.html).

For standard accelerators, Global Accelerator uses the AWS global
network to route traffic to the optimal regional endpoint based on
health, client location, and policies that you configure. The service
reacts instantly to changes in health or configuration to ensure that
internet traffic from clients is always directed to healthy endpoints.

For a list of the AWS Regions where Global Accelerator and other
services are currently supported, see the AWS Region Table
(https://docs.aws.amazon.com/about-aws/global-infrastructure/regional-product-services/).

AWS Global Accelerator includes the following components:

=over

=item Static IP addresses

Global Accelerator provides you with a set of two static IP addresses
that are anycast from the AWS edge network. If you bring your own IP
address range to AWS (BYOIP) to use with a standard accelerator, you
can instead assign IP addresses from your own pool to use with your
accelerator. For more information, see Bring your own IP addresses
(BYOIP) in AWS Global Accelerator
(https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html).

The IP addresses serve as single fixed entry points for your clients.
If you already have Elastic Load Balancing load balancers, Amazon EC2
instances, or Elastic IP address resources set up for your
applications, you can easily add those to a standard accelerator in
Global Accelerator. This allows Global Accelerator to use static IP
addresses to access the resources.

The static IP addresses remain assigned to your accelerator for as long
as it exists, even if you disable the accelerator and it no longer
accepts or routes traffic. However, when you I<delete> an accelerator,
you lose the static IP addresses that are assigned to it, so you can no
longer route traffic by using them. You can use IAM policies like
tag-based permissions with Global Accelerator to delete an accelerator.
For more information, see Tag-based policies
(https://docs.aws.amazon.com/global-accelerator/latest/dg/access-control-manage-access-tag-policies.html).

=item Accelerator

An accelerator directs traffic to endpoints over the AWS global network
to improve the performance of your internet applications. Each
accelerator includes one or more listeners.

There are two types of accelerators:

=over

=item *

A I<standard> accelerator directs traffic to the optimal AWS endpoint
based on several factors, including the userE<rsquo>s location, the
health of the endpoint, and the endpoint weights that you configure.
This improves the availability and performance of your applications.
Endpoints can be Network Load Balancers, Application Load Balancers,
Amazon EC2 instances, or Elastic IP addresses.

=item *

A I<custom routing> accelerator directs traffic to one of possibly
thousands of Amazon EC2 instances running in a single or multiple
virtual private clouds (VPCs). With custom routing, listener ports are
mapped to statically associate port ranges with VPC subnets, which
allows Global Accelerator to determine an EC2 instance IP address at
the time of connection. By default, all port mapping destinations in a
VPC subnet can't receive traffic. You can choose to configure all
destinations in the subnet to receive traffic, or to specify individual
port mappings that can receive traffic.

=back

For more information, see Types of accelerators
(https://docs.aws.amazon.com/global-accelerator/latest/dg/introduction-accelerator-types.html).

=item DNS name

Global Accelerator assigns each accelerator a default Domain Name
System (DNS) name, similar to
C<a1234567890abcdef.awsglobalaccelerator.com>, that points to the
static IP addresses that Global Accelerator assigns to you or that you
choose from your own IP address range. Depending on the use case, you
can use your accelerator's static IP addresses or DNS name to route
traffic to your accelerator, or set up DNS records to route traffic
using your own custom domain name.

=item Network zone

A network zone services the static IP addresses for your accelerator
from a unique IP subnet. Similar to an AWS Availability Zone, a network
zone is an isolated unit with its own set of physical infrastructure.
When you configure an accelerator, by default, Global Accelerator
allocates two IPv4 addresses for it. If one IP address from a network
zone becomes unavailable due to IP address blocking by certain client
networks, or network disruptions, then client applications can retry on
the healthy static IP address from the other isolated network zone.

=item Listener

A listener processes inbound connections from clients to Global
Accelerator, based on the port (or port range) and protocol (or
protocols) that you configure. A listener can be configured for TCP,
UDP, or both TCP and UDP protocols. Each listener has one or more
endpoint groups associated with it, and traffic is forwarded to
endpoints in one of the groups. You associate endpoint groups with
listeners by specifying the Regions that you want to distribute traffic
to. With a standard accelerator, traffic is distributed to optimal
endpoints within the endpoint groups associated with a listener.

=item Endpoint group

Each endpoint group is associated with a specific AWS Region. Endpoint
groups include one or more endpoints in the Region. With a standard
accelerator, you can increase or reduce the percentage of traffic that
would be otherwise directed to an endpoint group by adjusting a setting
called a I<traffic dial>. The traffic dial lets you easily do
performance testing or blue/green deployment testing, for example, for
new releases across different AWS Regions.

=item Endpoint

An endpoint is a resource that Global Accelerator directs traffic to.

Endpoints for standard accelerators can be Network Load Balancers,
Application Load Balancers, Amazon EC2 instances, or Elastic IP
addresses. An Application Load Balancer endpoint can be internet-facing
or internal. Traffic for standard accelerators is routed to endpoints
based on the health of the endpoint along with configuration options
that you choose, such as endpoint weights. For each endpoint, you can
configure weights, which are numbers that you can use to specify the
proportion of traffic to route to each one. This can be useful, for
example, to do performance testing within a Region.

Endpoints for custom routing accelerators are virtual private cloud
(VPC) subnets with one or many EC2 instances.

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08>


=head1 METHODS

=head2 AddCustomRoutingEndpoints

=over

=item EndpointConfigurations => ArrayRef[L<Paws::GlobalAccelerator::CustomRoutingEndpointConfiguration>]

=item EndpointGroupArn => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::AddCustomRoutingEndpoints>

Returns: a L<Paws::GlobalAccelerator::AddCustomRoutingEndpointsResponse> instance

Associate a virtual private cloud (VPC) subnet endpoint with your
custom routing accelerator.

The listener port range must be large enough to support the number of
IP addresses that can be specified in your subnet. The number of ports
required is: subnet size times the number of ports per destination EC2
instances. For example, a subnet defined as /24 requires a listener
port range of at least 255 ports.

Note: You must have enough remaining listener ports available to map to
the subnet ports, or the call will fail with a LimitExceededException.

By default, all destinations in a subnet in a custom routing
accelerator cannot receive traffic. To enable all destinations to
receive traffic, or to specify individual port mappings that can
receive traffic, see the AllowCustomRoutingTraffic
(https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html)
operation.


=head2 AdvertiseByoipCidr

=over

=item Cidr => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::AdvertiseByoipCidr>

Returns: a L<Paws::GlobalAccelerator::AdvertiseByoipCidrResponse> instance

Advertises an IPv4 address range that is provisioned for use with your
AWS resources through bring your own IP addresses (BYOIP). It can take
a few minutes before traffic to the specified addresses starts routing
to AWS because of propagation delays.

To stop advertising the BYOIP address range, use WithdrawByoipCidr
(https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html).

For more information, see Bring Your Own IP Addresses (BYOIP)
(https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
in the I<AWS Global Accelerator Developer Guide>.


=head2 AllowCustomRoutingTraffic

=over

=item EndpointGroupArn => Str

=item EndpointId => Str

=item [AllowAllTrafficToEndpoint => Bool]

=item [DestinationAddresses => ArrayRef[Str|Undef]]

=item [DestinationPorts => ArrayRef[Int]]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::AllowCustomRoutingTraffic>

Returns: nothing

Specify the Amazon EC2 instance (destination) IP addresses and ports
for a VPC subnet endpoint that can receive traffic for a custom routing
accelerator. You can allow traffic to all destinations in the subnet
endpoint, or allow traffic to a specified list of destination IP
addresses and ports in the subnet. Note that you cannot specify IP
addresses or ports outside of the range that you configured for the
endpoint group.

After you make changes, you can verify that the updates are complete by
checking the status of your accelerator: the status changes from
IN_PROGRESS to DEPLOYED.


=head2 CreateAccelerator

=over

=item IdempotencyToken => Str

=item Name => Str

=item [Enabled => Bool]

=item [IpAddresses => ArrayRef[Str|Undef]]

=item [IpAddressType => Str]

=item [Tags => ArrayRef[L<Paws::GlobalAccelerator::Tag>]]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::CreateAccelerator>

Returns: a L<Paws::GlobalAccelerator::CreateAcceleratorResponse> instance

Create an accelerator. An accelerator includes one or more listeners
that process inbound connections and direct traffic to one or more
endpoint groups, each of which includes endpoints, such as Network Load
Balancers.

Global Accelerator is a global service that supports endpoints in
multiple AWS Regions but you must specify the US West (Oregon) Region
to create or update accelerators.


=head2 CreateCustomRoutingAccelerator

=over

=item IdempotencyToken => Str

=item Name => Str

=item [Enabled => Bool]

=item [IpAddresses => ArrayRef[Str|Undef]]

=item [IpAddressType => Str]

=item [Tags => ArrayRef[L<Paws::GlobalAccelerator::Tag>]]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::CreateCustomRoutingAccelerator>

Returns: a L<Paws::GlobalAccelerator::CreateCustomRoutingAcceleratorResponse> instance

Create a custom routing accelerator. A custom routing accelerator
directs traffic to one of possibly thousands of Amazon EC2 instance
destinations running in a single or multiple virtual private clouds
(VPC) subnet endpoints.

Be aware that, by default, all destination EC2 instances in a VPC
subnet endpoint cannot receive traffic. To enable all destinations to
receive traffic, or to specify individual port mappings that can
receive traffic, see the AllowCustomRoutingTraffic
(https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html)
operation.

Global Accelerator is a global service that supports endpoints in
multiple AWS Regions but you must specify the US West (Oregon) Region
to create or update accelerators.


=head2 CreateCustomRoutingEndpointGroup

=over

=item DestinationConfigurations => ArrayRef[L<Paws::GlobalAccelerator::CustomRoutingDestinationConfiguration>]

=item EndpointGroupRegion => Str

=item IdempotencyToken => Str

=item ListenerArn => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::CreateCustomRoutingEndpointGroup>

Returns: a L<Paws::GlobalAccelerator::CreateCustomRoutingEndpointGroupResponse> instance

Create an endpoint group for the specified listener for a custom
routing accelerator. An endpoint group is a collection of endpoints in
one AWS Region.


=head2 CreateCustomRoutingListener

=over

=item AcceleratorArn => Str

=item IdempotencyToken => Str

=item PortRanges => ArrayRef[L<Paws::GlobalAccelerator::PortRange>]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::CreateCustomRoutingListener>

Returns: a L<Paws::GlobalAccelerator::CreateCustomRoutingListenerResponse> instance

Create a listener to process inbound connections from clients to a
custom routing accelerator. Connections arrive to assigned static IP
addresses on the port range that you specify.


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

=item [PortOverrides => ArrayRef[L<Paws::GlobalAccelerator::PortOverride>]]

=item [ThresholdCount => Int]

=item [TrafficDialPercentage => Num]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::CreateEndpointGroup>

Returns: a L<Paws::GlobalAccelerator::CreateEndpointGroupResponse> instance

Create an endpoint group for the specified listener. An endpoint group
is a collection of endpoints in one AWS Region. A resource must be
valid and active when you add it as an endpoint.


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
port, port range, or list of port ranges that you specify.


=head2 DeleteAccelerator

=over

=item AcceleratorArn => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::DeleteAccelerator>

Returns: nothing

Delete an accelerator. Before you can delete an accelerator, you must
disable it and remove all dependent resources (listeners and endpoint
groups). To disable the accelerator, update the accelerator to set
C<Enabled> to false.

When you create an accelerator, by default, Global Accelerator provides
you with a set of two static IP addresses. Alternatively, you can bring
your own IP address ranges to Global Accelerator and assign IP
addresses from those ranges.

The IP addresses are assigned to your accelerator for as long as it
exists, even if you disable the accelerator and it no longer accepts or
routes traffic. However, when you I<delete> an accelerator, you lose
the static IP addresses that are assigned to the accelerator, so you
can no longer route traffic by using them. As a best practice, ensure
that you have permissions in place to avoid inadvertently deleting
accelerators. You can use IAM policies with Global Accelerator to limit
the users who have permissions to delete an accelerator. For more
information, see Authentication and Access Control
(https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html)
in the I<AWS Global Accelerator Developer Guide>.


=head2 DeleteCustomRoutingAccelerator

=over

=item AcceleratorArn => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::DeleteCustomRoutingAccelerator>

Returns: nothing

Delete a custom routing accelerator. Before you can delete an
accelerator, you must disable it and remove all dependent resources
(listeners and endpoint groups). To disable the accelerator, update the
accelerator to set C<Enabled> to false.

When you create a custom routing accelerator, by default, Global
Accelerator provides you with a set of two static IP addresses.

The IP addresses are assigned to your accelerator for as long as it
exists, even if you disable the accelerator and it no longer accepts or
routes traffic. However, when you I<delete> an accelerator, you lose
the static IP addresses that are assigned to the accelerator, so you
can no longer route traffic by using them. As a best practice, ensure
that you have permissions in place to avoid inadvertently deleting
accelerators. You can use IAM policies with Global Accelerator to limit
the users who have permissions to delete an accelerator. For more
information, see Authentication and Access Control
(https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html)
in the I<AWS Global Accelerator Developer Guide>.


=head2 DeleteCustomRoutingEndpointGroup

=over

=item EndpointGroupArn => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::DeleteCustomRoutingEndpointGroup>

Returns: nothing

Delete an endpoint group from a listener for a custom routing
accelerator.


=head2 DeleteCustomRoutingListener

=over

=item ListenerArn => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::DeleteCustomRoutingListener>

Returns: nothing

Delete a listener for a custom routing accelerator.


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


=head2 DenyCustomRoutingTraffic

=over

=item EndpointGroupArn => Str

=item EndpointId => Str

=item [DenyAllTrafficToEndpoint => Bool]

=item [DestinationAddresses => ArrayRef[Str|Undef]]

=item [DestinationPorts => ArrayRef[Int]]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::DenyCustomRoutingTraffic>

Returns: nothing

Specify the Amazon EC2 instance (destination) IP addresses and ports
for a VPC subnet endpoint that cannot receive traffic for a custom
routing accelerator. You can deny traffic to all destinations in the
VPC endpoint, or deny traffic to a specified list of destination IP
addresses and ports. Note that you cannot specify IP addresses or ports
outside of the range that you configured for the endpoint group.

After you make changes, you can verify that the updates are complete by
checking the status of your accelerator: the status changes from
IN_PROGRESS to DEPLOYED.


=head2 DeprovisionByoipCidr

=over

=item Cidr => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::DeprovisionByoipCidr>

Returns: a L<Paws::GlobalAccelerator::DeprovisionByoipCidrResponse> instance

Releases the specified address range that you provisioned to use with
your AWS resources through bring your own IP addresses (BYOIP) and
deletes the corresponding address pool.

Before you can release an address range, you must stop advertising it
by using WithdrawByoipCidr
(https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html)
and you must not have any accelerators that are using static IP
addresses allocated from its address range.

For more information, see Bring Your Own IP Addresses (BYOIP)
(https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
in the I<AWS Global Accelerator Developer Guide>.


=head2 DescribeAccelerator

=over

=item AcceleratorArn => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::DescribeAccelerator>

Returns: a L<Paws::GlobalAccelerator::DescribeAcceleratorResponse> instance

Describe an accelerator.


=head2 DescribeAcceleratorAttributes

=over

=item AcceleratorArn => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::DescribeAcceleratorAttributes>

Returns: a L<Paws::GlobalAccelerator::DescribeAcceleratorAttributesResponse> instance

Describe the attributes of an accelerator.


=head2 DescribeCustomRoutingAccelerator

=over

=item AcceleratorArn => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::DescribeCustomRoutingAccelerator>

Returns: a L<Paws::GlobalAccelerator::DescribeCustomRoutingAcceleratorResponse> instance

Describe a custom routing accelerator.


=head2 DescribeCustomRoutingAcceleratorAttributes

=over

=item AcceleratorArn => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::DescribeCustomRoutingAcceleratorAttributes>

Returns: a L<Paws::GlobalAccelerator::DescribeCustomRoutingAcceleratorAttributesResponse> instance

Describe the attributes of a custom routing accelerator.


=head2 DescribeCustomRoutingEndpointGroup

=over

=item EndpointGroupArn => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::DescribeCustomRoutingEndpointGroup>

Returns: a L<Paws::GlobalAccelerator::DescribeCustomRoutingEndpointGroupResponse> instance

Describe an endpoint group for a custom routing accelerator.


=head2 DescribeCustomRoutingListener

=over

=item ListenerArn => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::DescribeCustomRoutingListener>

Returns: a L<Paws::GlobalAccelerator::DescribeCustomRoutingListenerResponse> instance

The description of a listener for a custom routing accelerator.


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


=head2 ListByoipCidrs

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::ListByoipCidrs>

Returns: a L<Paws::GlobalAccelerator::ListByoipCidrsResponse> instance

Lists the IP address ranges that were specified in calls to
ProvisionByoipCidr
(https://docs.aws.amazon.com/global-accelerator/latest/api/ProvisionByoipCidr.html),
including the current state and a history of state changes.


=head2 ListCustomRoutingAccelerators

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::ListCustomRoutingAccelerators>

Returns: a L<Paws::GlobalAccelerator::ListCustomRoutingAcceleratorsResponse> instance

List the custom routing accelerators for an AWS account.


=head2 ListCustomRoutingEndpointGroups

=over

=item ListenerArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::ListCustomRoutingEndpointGroups>

Returns: a L<Paws::GlobalAccelerator::ListCustomRoutingEndpointGroupsResponse> instance

List the endpoint groups that are associated with a listener for a
custom routing accelerator.


=head2 ListCustomRoutingListeners

=over

=item AcceleratorArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::ListCustomRoutingListeners>

Returns: a L<Paws::GlobalAccelerator::ListCustomRoutingListenersResponse> instance

List the listeners for a custom routing accelerator.


=head2 ListCustomRoutingPortMappings

=over

=item AcceleratorArn => Str

=item [EndpointGroupArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::ListCustomRoutingPortMappings>

Returns: a L<Paws::GlobalAccelerator::ListCustomRoutingPortMappingsResponse> instance

Provides a complete mapping from the public accelerator IP address and
port to destination EC2 instance IP addresses and ports in the virtual
public cloud (VPC) subnet endpoint for a custom routing accelerator.
For each subnet endpoint that you add, Global Accelerator creates a new
static port mapping for the accelerator. The port mappings don't change
after Global Accelerator generates them, so you can retrieve and cache
the full mapping on your servers.

If you remove a subnet from your accelerator, Global Accelerator
removes (reclaims) the port mappings. If you add a subnet to your
accelerator, Global Accelerator creates new port mappings (the existing
ones don't change). If you add or remove EC2 instances in your subnet,
the port mappings don't change, because the mappings are created when
you add the subnet to Global Accelerator.

The mappings also include a flag for each destination denoting which
destination IP addresses and ports are allowed or denied traffic.


=head2 ListCustomRoutingPortMappingsByDestination

=over

=item DestinationAddress => Str

=item EndpointId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::ListCustomRoutingPortMappingsByDestination>

Returns: a L<Paws::GlobalAccelerator::ListCustomRoutingPortMappingsByDestinationResponse> instance

List the port mappings for a specific EC2 instance (destination) in a
VPC subnet endpoint. The response is the mappings for one destination
IP address. This is useful when your subnet endpoint has mappings that
span multiple custom routing accelerators in your account, or for
scenarios where you only want to list the port mappings for a specific
destination instance.


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


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::ListTagsForResource>

Returns: a L<Paws::GlobalAccelerator::ListTagsForResourceResponse> instance

List all tags for an accelerator.

For more information, see Tagging in AWS Global Accelerator
(https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html)
in the I<AWS Global Accelerator Developer Guide>.


=head2 ProvisionByoipCidr

=over

=item Cidr => Str

=item CidrAuthorizationContext => L<Paws::GlobalAccelerator::CidrAuthorizationContext>


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::ProvisionByoipCidr>

Returns: a L<Paws::GlobalAccelerator::ProvisionByoipCidrResponse> instance

Provisions an IP address range to use with your AWS resources through
bring your own IP addresses (BYOIP) and creates a corresponding address
pool. After the address range is provisioned, it is ready to be
advertised using AdvertiseByoipCidr
(https://docs.aws.amazon.com/global-accelerator/latest/api/AdvertiseByoipCidr.html).

For more information, see Bring Your Own IP Addresses (BYOIP)
(https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
in the I<AWS Global Accelerator Developer Guide>.


=head2 RemoveCustomRoutingEndpoints

=over

=item EndpointGroupArn => Str

=item EndpointIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::RemoveCustomRoutingEndpoints>

Returns: nothing

Remove endpoints from a custom routing accelerator.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::GlobalAccelerator::Tag>]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::TagResource>

Returns: a L<Paws::GlobalAccelerator::TagResourceResponse> instance

Add tags to an accelerator resource.

For more information, see Tagging in AWS Global Accelerator
(https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html)
in the I<AWS Global Accelerator Developer Guide>.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::UntagResource>

Returns: a L<Paws::GlobalAccelerator::UntagResourceResponse> instance

Remove tags from a Global Accelerator resource. When you specify a tag
key, the action removes both that key and its associated value. The
operation succeeds even if you attempt to remove tags from an
accelerator that was already removed.

For more information, see Tagging in AWS Global Accelerator
(https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html)
in the I<AWS Global Accelerator Developer Guide>.


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

Global Accelerator is a global service that supports endpoints in
multiple AWS Regions but you must specify the US West (Oregon) Region
to create or update accelerators.


=head2 UpdateAcceleratorAttributes

=over

=item AcceleratorArn => Str

=item [FlowLogsEnabled => Bool]

=item [FlowLogsS3Bucket => Str]

=item [FlowLogsS3Prefix => Str]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::UpdateAcceleratorAttributes>

Returns: a L<Paws::GlobalAccelerator::UpdateAcceleratorAttributesResponse> instance

Update the attributes for an accelerator.


=head2 UpdateCustomRoutingAccelerator

=over

=item AcceleratorArn => Str

=item [Enabled => Bool]

=item [IpAddressType => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::UpdateCustomRoutingAccelerator>

Returns: a L<Paws::GlobalAccelerator::UpdateCustomRoutingAcceleratorResponse> instance

Update a custom routing accelerator.


=head2 UpdateCustomRoutingAcceleratorAttributes

=over

=item AcceleratorArn => Str

=item [FlowLogsEnabled => Bool]

=item [FlowLogsS3Bucket => Str]

=item [FlowLogsS3Prefix => Str]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::UpdateCustomRoutingAcceleratorAttributes>

Returns: a L<Paws::GlobalAccelerator::UpdateCustomRoutingAcceleratorAttributesResponse> instance

Update the attributes for a custom routing accelerator.


=head2 UpdateCustomRoutingListener

=over

=item ListenerArn => Str

=item PortRanges => ArrayRef[L<Paws::GlobalAccelerator::PortRange>]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::UpdateCustomRoutingListener>

Returns: a L<Paws::GlobalAccelerator::UpdateCustomRoutingListenerResponse> instance

Update a listener for a custom routing accelerator.


=head2 UpdateEndpointGroup

=over

=item EndpointGroupArn => Str

=item [EndpointConfigurations => ArrayRef[L<Paws::GlobalAccelerator::EndpointConfiguration>]]

=item [HealthCheckIntervalSeconds => Int]

=item [HealthCheckPath => Str]

=item [HealthCheckPort => Int]

=item [HealthCheckProtocol => Str]

=item [PortOverrides => ArrayRef[L<Paws::GlobalAccelerator::PortOverride>]]

=item [ThresholdCount => Int]

=item [TrafficDialPercentage => Num]


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::UpdateEndpointGroup>

Returns: a L<Paws::GlobalAccelerator::UpdateEndpointGroupResponse> instance

Update an endpoint group. A resource must be valid and active when you
add it as an endpoint.


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


=head2 WithdrawByoipCidr

=over

=item Cidr => Str


=back

Each argument is described in detail in: L<Paws::GlobalAccelerator::WithdrawByoipCidr>

Returns: a L<Paws::GlobalAccelerator::WithdrawByoipCidrResponse> instance

Stops advertising an address range that is provisioned as an address
pool. You can perform this operation at most once every 10 seconds,
even if you specify different address ranges each time.

It can take a few minutes before traffic to the specified addresses
stops routing to AWS because of propagation delays.

For more information, see Bring Your Own IP Addresses (BYOIP)
(https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
in the I<AWS Global Accelerator Developer Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAccelerators(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllAccelerators([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Accelerators, passing the object as the first parameter, and the string 'Accelerators' as the second parameter 

If not, it will return a a L<Paws::GlobalAccelerator::ListAcceleratorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllByoipCidrs(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllByoipCidrs([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ByoipCidrs, passing the object as the first parameter, and the string 'ByoipCidrs' as the second parameter 

If not, it will return a a L<Paws::GlobalAccelerator::ListByoipCidrsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCustomRoutingAccelerators(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllCustomRoutingAccelerators([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Accelerators, passing the object as the first parameter, and the string 'Accelerators' as the second parameter 

If not, it will return a a L<Paws::GlobalAccelerator::ListCustomRoutingAcceleratorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCustomRoutingListeners(sub { },AcceleratorArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllCustomRoutingListeners(AcceleratorArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Listeners, passing the object as the first parameter, and the string 'Listeners' as the second parameter 

If not, it will return a a L<Paws::GlobalAccelerator::ListCustomRoutingListenersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCustomRoutingPortMappings(sub { },AcceleratorArn => Str, [EndpointGroupArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllCustomRoutingPortMappings(AcceleratorArn => Str, [EndpointGroupArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PortMappings, passing the object as the first parameter, and the string 'PortMappings' as the second parameter 

If not, it will return a a L<Paws::GlobalAccelerator::ListCustomRoutingPortMappingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCustomRoutingPortMappingsByDestination(sub { },DestinationAddress => Str, EndpointId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllCustomRoutingPortMappingsByDestination(DestinationAddress => Str, EndpointId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DestinationPortMappings, passing the object as the first parameter, and the string 'DestinationPortMappings' as the second parameter 

If not, it will return a a L<Paws::GlobalAccelerator::ListCustomRoutingPortMappingsByDestinationResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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

