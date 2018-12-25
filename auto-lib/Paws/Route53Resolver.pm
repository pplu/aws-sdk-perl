package Paws::Route53Resolver;
  use Moose;
  sub service { 'route53resolver' }
  sub signing_name { 'route53resolver' }
  sub version { '2018-04-01' }
  sub target_prefix { 'Route53Resolver' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateResolverEndpointIpAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::AssociateResolverEndpointIpAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateResolverRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::AssociateResolverRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResolverEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::CreateResolverEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResolverRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::CreateResolverRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResolverEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::DeleteResolverEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResolverRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::DeleteResolverRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateResolverEndpointIpAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::DisassociateResolverEndpointIpAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateResolverRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::DisassociateResolverRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResolverEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::GetResolverEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResolverRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::GetResolverRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResolverRuleAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::GetResolverRuleAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResolverRulePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::GetResolverRulePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResolverEndpointIpAddresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ListResolverEndpointIpAddresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResolverEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ListResolverEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResolverRuleAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ListResolverRuleAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResolverRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ListResolverRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResolverRulePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::PutResolverRulePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResolverEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::UpdateResolverEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResolverRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Resolver::UpdateResolverRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTagsForResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTagsForResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }


  sub operations { qw/AssociateResolverEndpointIpAddress AssociateResolverRule CreateResolverEndpoint CreateResolverRule DeleteResolverEndpoint DeleteResolverRule DisassociateResolverEndpointIpAddress DisassociateResolverRule GetResolverEndpoint GetResolverRule GetResolverRuleAssociation GetResolverRulePolicy ListResolverEndpointIpAddresses ListResolverEndpoints ListResolverRuleAssociations ListResolverRules ListTagsForResource PutResolverRulePolicy TagResource UntagResource UpdateResolverEndpoint UpdateResolverRule / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver - Perl Interface to AWS Amazon Route 53 Resolver

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Route53Resolver');
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

Here's how you set up to query an Amazon Route 53 private hosted zone
from your network:

=over

=item 1.

Connect your network to a VPC using AWS Direct Connect or a VPN.

=item 2.

Run the following AWS CLI command to create a Resolver endpoint:

C<create-resolver-endpoint --name [endpoint_name] --direction INBOUND
--creator-request-id [unique_string] --security-group-ids
[security_group_with_inbound_rules] --ip-addresses SubnetId=[subnet_id]
SubnetId=[subnet_id_in_different_AZ]>

Note the resolver endpoint ID that appears in the response. You'll use
it in step 3.

=item 3.

Get the IP addresses for the Resolver endpoints:

C<get-resolver-endpoint --resolver-endpoint-id [resolver_endpoint_id]>

=item 4.

In your network configuration, define the IP addresses that you got in
step 3 as DNS servers.

You can now query instance names in your VPCs and the names of records
in your private hosted zone.

=back

You can also perform the following operations using the AWS CLI:

=over

=item *

C<list-resolver-endpoints>: List all endpoints. The syntax includes
options for pagination and filtering.

=item *

C<update-resolver-endpoints>: Add IP addresses to an endpoint or remove
IP addresses from an endpoint.

=back

To delete an endpoint, use the following AWS CLI command:

C<delete-resolver-endpoint --resolver-endpoint-id
[resolver_endpoint_id]>

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01>


=head1 METHODS

=head2 AssociateResolverEndpointIpAddress

=over

=item IpAddress => L<Paws::Route53Resolver::IpAddressUpdate>

=item ResolverEndpointId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::AssociateResolverEndpointIpAddress>

Returns: a L<Paws::Route53Resolver::AssociateResolverEndpointIpAddressResponse> instance

Adds IP addresses to an inbound or an outbound resolver endpoint. If
you want to adding more than one IP address, submit one
C<AssociateResolverEndpointIpAddress> request for each IP address.

To remove an IP address from an endpoint, see
DisassociateResolverEndpointIpAddress.


=head2 AssociateResolverRule

=over

=item ResolverRuleId => Str

=item VPCId => Str

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::AssociateResolverRule>

Returns: a L<Paws::Route53Resolver::AssociateResolverRuleResponse> instance

Associates a resolver rule with a VPC. When you associate a rule with a
VPC, Resolver forwards all DNS queries for the domain name that is
specified in the rule and that originate in the VPC. The queries are
forwarded to the IP addresses for the DNS resolvers that are specified
in the rule. For more information about rules, see CreateResolverRule.


=head2 CreateResolverEndpoint

=over

=item CreatorRequestId => Str

=item Direction => Str

=item IpAddresses => ArrayRef[L<Paws::Route53Resolver::IpAddressRequest>]

=item SecurityGroupIds => ArrayRef[Str|Undef]

=item [Name => Str]

=item [Tags => ArrayRef[L<Paws::Route53Resolver::Tag>]]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::CreateResolverEndpoint>

Returns: a L<Paws::Route53Resolver::CreateResolverEndpointResponse> instance

Creates a resolver endpoint. There are two types of resolver endpoints,
inbound and outbound:

=over

=item *

An I<inbound resolver endpoint> forwards DNS queries to the DNS service
for a VPC from your network or another VPC.

=item *

An I<outbound resolver endpoint> forwards DNS queries from the DNS
service for a VPC to your network or another VPC.

=back



=head2 CreateResolverRule

=over

=item CreatorRequestId => Str

=item DomainName => Str

=item RuleType => Str

=item [Name => Str]

=item [ResolverEndpointId => Str]

=item [Tags => ArrayRef[L<Paws::Route53Resolver::Tag>]]

=item [TargetIps => ArrayRef[L<Paws::Route53Resolver::TargetAddress>]]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::CreateResolverRule>

Returns: a L<Paws::Route53Resolver::CreateResolverRuleResponse> instance

For DNS queries that originate in your VPCs, specifies which resolver
endpoint the queries pass through, one domain name that you want to
forward to your network, and the IP addresses of the DNS resolvers in
your network.


=head2 DeleteResolverEndpoint

=over

=item ResolverEndpointId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::DeleteResolverEndpoint>

Returns: a L<Paws::Route53Resolver::DeleteResolverEndpointResponse> instance

Deletes a resolver endpoint. The effect of deleting a resolver endpoint
depends on whether it's an inbound or an outbound resolver endpoint:

=over

=item *

B<Inbound>: DNS queries from your network or another VPC are no longer
routed to the DNS service for the specified VPC.

=item *

B<Outbound>: DNS queries from a VPC are no longer routed to your
network or to another VPC.

=back



=head2 DeleteResolverRule

=over

=item ResolverRuleId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::DeleteResolverRule>

Returns: a L<Paws::Route53Resolver::DeleteResolverRuleResponse> instance

Deletes a resolver rule. Before you can delete a resolver rule, you
must disassociate it from all the VPCs that you associated the resolver
rule with. For more infomation, see DisassociateResolverRule.


=head2 DisassociateResolverEndpointIpAddress

=over

=item IpAddress => L<Paws::Route53Resolver::IpAddressUpdate>

=item ResolverEndpointId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::DisassociateResolverEndpointIpAddress>

Returns: a L<Paws::Route53Resolver::DisassociateResolverEndpointIpAddressResponse> instance

Removes IP addresses from an inbound or an outbound resolver endpoint.
If you want to remove more than one IP address, submit one
C<DisassociateResolverEndpointIpAddress> request for each IP address.

To add an IP address to an endpoint, see
AssociateResolverEndpointIpAddress.


=head2 DisassociateResolverRule

=over

=item ResolverRuleId => Str

=item VPCId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::DisassociateResolverRule>

Returns: a L<Paws::Route53Resolver::DisassociateResolverRuleResponse> instance

Removes the association between a specified resolver rule and a
specified VPC.

If you disassociate a resolver rule from a VPC, Resolver stops
forwarding DNS queries for the domain name that you specified in the
resolver rule.


=head2 GetResolverEndpoint

=over

=item ResolverEndpointId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::GetResolverEndpoint>

Returns: a L<Paws::Route53Resolver::GetResolverEndpointResponse> instance

Gets information about a specified resolver endpoint, such as whether
it's an inbound or an outbound resolver endpoint, and the current
status of the endpoint.


=head2 GetResolverRule

=over

=item ResolverRuleId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::GetResolverRule>

Returns: a L<Paws::Route53Resolver::GetResolverRuleResponse> instance

Gets information about a specified resolver rule, such as the domain
name that the rule forwards DNS queries for and the ID of the outbound
resolver endpoint that the rule is associated with.


=head2 GetResolverRuleAssociation

=over

=item ResolverRuleAssociationId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::GetResolverRuleAssociation>

Returns: a L<Paws::Route53Resolver::GetResolverRuleAssociationResponse> instance

Gets information about an association between a specified resolver rule
and a VPC. You associate a resolver rule and a VPC using
AssociateResolverRule.


=head2 GetResolverRulePolicy

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::GetResolverRulePolicy>

Returns: a L<Paws::Route53Resolver::GetResolverRulePolicyResponse> instance

Gets information about a resolver rule policy. A resolver rule policy
specifies the Resolver operations and resources that you want to allow
another AWS account to be able to use.


=head2 ListResolverEndpointIpAddresses

=over

=item ResolverEndpointId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ListResolverEndpointIpAddresses>

Returns: a L<Paws::Route53Resolver::ListResolverEndpointIpAddressesResponse> instance

Gets the IP addresses for a specified resolver endpoint.


=head2 ListResolverEndpoints

=over

=item [Filters => ArrayRef[L<Paws::Route53Resolver::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ListResolverEndpoints>

Returns: a L<Paws::Route53Resolver::ListResolverEndpointsResponse> instance

Lists all the resolver endpoints that were created using the current
AWS account.


=head2 ListResolverRuleAssociations

=over

=item [Filters => ArrayRef[L<Paws::Route53Resolver::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ListResolverRuleAssociations>

Returns: a L<Paws::Route53Resolver::ListResolverRuleAssociationsResponse> instance

Lists the associations that were created between resolver rules and
VPCs using the current AWS account.


=head2 ListResolverRules

=over

=item [Filters => ArrayRef[L<Paws::Route53Resolver::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ListResolverRules>

Returns: a L<Paws::Route53Resolver::ListResolverRulesResponse> instance

Lists the resolver rules that were created using the current AWS
account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::ListTagsForResource>

Returns: a L<Paws::Route53Resolver::ListTagsForResourceResponse> instance

Lists the tags that you associated with the specified resource.


=head2 PutResolverRulePolicy

=over

=item Arn => Str

=item ResolverRulePolicy => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::PutResolverRulePolicy>

Returns: a L<Paws::Route53Resolver::PutResolverRulePolicyResponse> instance

Specifies the Resolver operations and resources that you want to allow
another AWS account to be able to use.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::Route53Resolver::Tag>]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::TagResource>

Returns: a L<Paws::Route53Resolver::TagResourceResponse> instance

Adds one or more tags to a specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::UntagResource>

Returns: a L<Paws::Route53Resolver::UntagResourceResponse> instance

Removes one or more tags from a specified resource.


=head2 UpdateResolverEndpoint

=over

=item ResolverEndpointId => Str

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Route53Resolver::UpdateResolverEndpoint>

Returns: a L<Paws::Route53Resolver::UpdateResolverEndpointResponse> instance

Updates the name of an inbound or an outbound resolver endpoint.


=head2 UpdateResolverRule

=over

=item Config => L<Paws::Route53Resolver::ResolverRuleConfig>

=item ResolverRuleId => Str


=back

Each argument is described in detail in: L<Paws::Route53Resolver::UpdateResolverRule>

Returns: a L<Paws::Route53Resolver::UpdateResolverRuleResponse> instance

Updates settings for a specified resolver rule. C<ResolverRuleId> is
required, and all other parameters are optional. If you don't specify a
parameter, it retains its current value.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllTagsForResource(sub { },ResourceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::Route53Resolver::ListTagsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

