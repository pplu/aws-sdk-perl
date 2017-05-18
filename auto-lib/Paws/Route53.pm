package Paws::Route53;
  warn "Paws::Route53 is not stable / supported / entirely developed";
  use Moose;
  sub service { 'route53' }
  sub version { '2013-04-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
       sub { defined $_[0]->http_status and $_[0]->http_status == 400 and $_[0]->code eq 'Throttling' },
       sub { defined $_[0]->http_status and $_[0]->http_status == 400 and $_[0]->code eq 'PriorRequestNotComplete' },
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestXmlCaller', 'Paws::Net::RestXMLResponse';

  has '+region_rules' => (default => sub {
    my $regioninfo;
      $regioninfo = [
    {
      constraints => [
        [
          'region',
          'notStartsWith',
          'cn-'
        ]
      ],
      properties => {
        credentialScope => {
          region => 'us-east-1'
        }
      },
      uri => 'https://route53.amazonaws.com'
    }
  ];

    return $regioninfo;
  });

  
  sub AssociateVPCWithHostedZone {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::AssociateVPCWithHostedZone', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ChangeResourceRecordSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::ChangeResourceRecordSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ChangeTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::ChangeTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHealthCheck {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::CreateHealthCheck', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHostedZone {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::CreateHostedZone', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReusableDelegationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::CreateReusableDelegationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrafficPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::CreateTrafficPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrafficPolicyInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::CreateTrafficPolicyInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrafficPolicyVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::CreateTrafficPolicyVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVPCAssociationAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::CreateVPCAssociationAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHealthCheck {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::DeleteHealthCheck', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHostedZone {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::DeleteHostedZone', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReusableDelegationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::DeleteReusableDelegationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrafficPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::DeleteTrafficPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrafficPolicyInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::DeleteTrafficPolicyInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVPCAssociationAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::DeleteVPCAssociationAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateVPCFromHostedZone {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::DisassociateVPCFromHostedZone', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChange {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::GetChange', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCheckerIpRanges {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::GetCheckerIpRanges', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGeoLocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::GetGeoLocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHealthCheck {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::GetHealthCheck', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHealthCheckCount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::GetHealthCheckCount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHealthCheckLastFailureReason {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::GetHealthCheckLastFailureReason', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHealthCheckStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::GetHealthCheckStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHostedZone {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::GetHostedZone', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHostedZoneCount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::GetHostedZoneCount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReusableDelegationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::GetReusableDelegationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTrafficPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::GetTrafficPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTrafficPolicyInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::GetTrafficPolicyInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTrafficPolicyInstanceCount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::GetTrafficPolicyInstanceCount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGeoLocations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::ListGeoLocations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHealthChecks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::ListHealthChecks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHostedZones {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::ListHostedZones', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHostedZonesByName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::ListHostedZonesByName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceRecordSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::ListResourceRecordSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReusableDelegationSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::ListReusableDelegationSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::ListTagsForResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrafficPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::ListTrafficPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrafficPolicyInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::ListTrafficPolicyInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrafficPolicyInstancesByHostedZone {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::ListTrafficPolicyInstancesByHostedZone', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrafficPolicyInstancesByPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::ListTrafficPolicyInstancesByPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrafficPolicyVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::ListTrafficPolicyVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVPCAssociationAuthorizations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::ListVPCAssociationAuthorizations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestDNSAnswer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::TestDNSAnswer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateHealthCheck {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::UpdateHealthCheck', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateHostedZoneComment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::UpdateHostedZoneComment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTrafficPolicyComment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::UpdateTrafficPolicyComment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTrafficPolicyInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::UpdateTrafficPolicyInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllHealthChecks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListHealthChecks(@_);

    if (not defined $callback) {
      while ($result->IsTruncated) {
        $result = $self->ListHealthChecks(@_, Marker => $result->NextMarker);
        push @{ $result->HealthChecks }, @{ $result->HealthChecks };
      }
      return $result;
    } else {
      while ($result->IsTruncated) {
        $result = $self->ListHealthChecks(@_, Marker => $result->NextMarker);
        $callback->($_ => 'HealthChecks') foreach (@{ $result->HealthChecks });
      }
    }

    return undef
  }
  sub ListAllHostedZones {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListHostedZones(@_);

    if (not defined $callback) {
      while ($result->IsTruncated) {
        $result = $self->ListHostedZones(@_, Marker => $result->NextMarker);
        push @{ $result->HostedZones }, @{ $result->HostedZones };
      }
      return $result;
    } else {
      while ($result->IsTruncated) {
        $result = $self->ListHostedZones(@_, Marker => $result->NextMarker);
        $callback->($_ => 'HostedZones') foreach (@{ $result->HostedZones });
      }
    }

    return undef
  }
  sub ListAllResourceRecordSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceRecordSets(@_);

    if (not defined $callback) {
      while ($result->IsTruncated) {
        $result = $self->ListResourceRecordSets(@_, StartRecordName => $result->NextRecordName, StartRecordType => $result->NextRecordType, StartRecordIdentifier => $result->NextRecordIdentifier);
        push @{ $result->ResourceRecordSets }, @{ $result->ResourceRecordSets };
      }
      return $result;
    } else {
      while ($result->IsTruncated) {
        $result = $self->ListResourceRecordSets(@_, StartRecordName => $result->NextRecordName, StartRecordType => $result->NextRecordType, StartRecordIdentifier => $result->NextRecordIdentifier);
        $callback->($_ => 'ResourceRecordSets') foreach (@{ $result->ResourceRecordSets });
      }
    }

    return undef
  }


  sub operations { qw/AssociateVPCWithHostedZone ChangeResourceRecordSets ChangeTagsForResource CreateHealthCheck CreateHostedZone CreateReusableDelegationSet CreateTrafficPolicy CreateTrafficPolicyInstance CreateTrafficPolicyVersion CreateVPCAssociationAuthorization DeleteHealthCheck DeleteHostedZone DeleteReusableDelegationSet DeleteTrafficPolicy DeleteTrafficPolicyInstance DeleteVPCAssociationAuthorization DisassociateVPCFromHostedZone GetChange GetCheckerIpRanges GetGeoLocation GetHealthCheck GetHealthCheckCount GetHealthCheckLastFailureReason GetHealthCheckStatus GetHostedZone GetHostedZoneCount GetReusableDelegationSet GetTrafficPolicy GetTrafficPolicyInstance GetTrafficPolicyInstanceCount ListGeoLocations ListHealthChecks ListHostedZones ListHostedZonesByName ListResourceRecordSets ListReusableDelegationSets ListTagsForResource ListTagsForResources ListTrafficPolicies ListTrafficPolicyInstances ListTrafficPolicyInstancesByHostedZone ListTrafficPolicyInstancesByPolicy ListTrafficPolicyVersions ListVPCAssociationAuthorizations TestDNSAnswer UpdateHealthCheck UpdateHostedZoneComment UpdateTrafficPolicyComment UpdateTrafficPolicyInstance / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53 - Perl Interface to AWS Amazon Route 53

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Route53');
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

Amazon Route 53

Amazon Route 53 is a scalable Domain Name System (DNS) web service. It
provides secure and reliable routing to your infrastructure that uses
Amazon Web Services (AWS) products, such as Amazon Elastic Compute
Cloud (Amazon EC2), Elastic Load Balancing, or Amazon Simple Storage
Service (Amazon S3). You can also use Amazon Route 53 to route users to
your infrastructure outside of AWS.

Amazon Route 53 is an authoritative DNS service, meaning it translates
friendly domains names like www.example.com into IP addresses like
192.0.2.1. Amazon Route 53 responds to DNS queries using a global
network of authoritative DNS servers, which reduces latency. For a list
of the locations of Amazon Route 53 DNS servers, see The Amazon Route
53 Global Network on the Amazon Route 53 detail page.

=head1 METHODS

=head2 AssociateVPCWithHostedZone(HostedZoneId => Str, VPC => L<Paws::Route53::VPC>, [Comment => Str])

Each argument is described in detail in: L<Paws::Route53::AssociateVPCWithHostedZone>

Returns: a L<Paws::Route53::AssociateVPCWithHostedZoneResponse> instance

  Associates an Amazon VPC with a private hosted zone.

To perform the association, the VPC and the private hosted zone must
already exist. You can't convert a public hosted zone into a private
hosted zone.

If you want to associate a VPC that was created by using one AWS
account with a private hosted zone that was created by using a
different account, the AWS account that created the private hosted zone
must first submit a C<CreateVPCAssociationAuthorization> request. Then
the account that created the VPC must submit an
C<AssociateVPCWithHostedZone> request.


=head2 ChangeResourceRecordSets(ChangeBatch => L<Paws::Route53::ChangeBatch>, HostedZoneId => Str)

Each argument is described in detail in: L<Paws::Route53::ChangeResourceRecordSets>

Returns: a L<Paws::Route53::ChangeResourceRecordSetsResponse> instance

  Creates, changes, or deletes a resource record set, which contains
authoritative DNS information for a specified domain name or subdomain
name. For example, you can use C<ChangeResourceRecordSets> to create a
resource record set that routes traffic for test.example.com to a web
server that has an IP address of 192.0.2.44.

B<Change Batches and Transactional Changes>

The request body must include a document with a
C<ChangeResourceRecordSetsRequest> element. The request body contains a
list of change items, known as a change batch. Change batches are
considered transactional changes. When using the Amazon Route 53 API to
change resource record sets, Amazon Route 53 either makes all or none
of the changes in a change batch request. This ensures that Amazon
Route 53 never partially implements the intended changes to the
resource record sets in a hosted zone.

For example, a change batch request that deletes the C<CNAME> record
for www.example.com and creates an alias resource record set for
www.example.com. Amazon Route 53 deletes the first resource record set
and creates the second resource record set in a single operation. If
either the C<DELETE> or the C<CREATE> action fails, then both changes
(plus any other changes in the batch) fail, and the original C<CNAME>
record continues to exist.

Due to the nature of transactional changes, you can't delete the same
resource record set more than once in a single change batch. If you
attempt to delete the same change batch more than once, Amazon Route 53
returns an C<InvalidChangeBatch> error.

B<Traffic Flow>

To create resource record sets for complex routing configurations, use
either the traffic flow visual editor in the Amazon Route 53 console or
the API actions for traffic policies and traffic policy instances. Save
the configuration as a traffic policy, then associate the traffic
policy with one or more domain names (such as example.com) or subdomain
names (such as www.example.com), in the same hosted zone or in multiple
hosted zones. You can roll back the updates if the new configuration
isn't performing as expected. For more information, see Using Traffic
Flow to Route DNS Traffic in the I<Amazon Route 53 Developer Guide>.

B<Create, Delete, and Upsert>

Use C<ChangeResourceRecordsSetsRequest> to perform the following
actions:

=over

=item *

C<CREATE>: Creates a resource record set that has the specified values.

=item *

C<DELETE>: Deletes an existing resource record set that has the
specified values.

=item *

C<UPSERT>: If a resource record set does not already exist, AWS creates
it. If a resource set does exist, Amazon Route 53 updates it with the
values in the request.

=back

B<Syntaxes for Creating, Updating, and Deleting Resource Record Sets>

The syntax for a request depends on the type of resource record set
that you want to create, delete, or update, such as weighted, alias, or
failover. The XML elements in your request must appear in the order
listed in the syntax.

For an example for each type of resource record set, see "Examples."

Don't refer to the syntax in the "Parameter Syntax" section, which
includes all of the elements for every kind of resource record set that
you can create, delete, or update by using C<ChangeResourceRecordSets>.

B<Change Propagation to Amazon Route 53 DNS Servers>

When you submit a C<ChangeResourceRecordSets> request, Amazon Route 53
propagates your changes to all of the Amazon Route 53 authoritative DNS
servers. While your changes are propagating, C<GetChange> returns a
status of C<PENDING>. When propagation is complete, C<GetChange>
returns a status of C<INSYNC>. Changes generally propagate to all
Amazon Route 53 name servers in a few minutes. In rare circumstances,
propagation can take up to 30 minutes. For more information, see
GetChange.

B<Limits on ChangeResourceRecordSets Requests>

For information about the limits on a C<ChangeResourceRecordSets>
request, see Limits in the I<Amazon Route 53 Developer Guide>.


=head2 ChangeTagsForResource(ResourceId => Str, ResourceType => Str, [AddTags => ArrayRef[L<Paws::Route53::Tag>], RemoveTagKeys => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::Route53::ChangeTagsForResource>

Returns: a L<Paws::Route53::ChangeTagsForResourceResponse> instance

  Adds, edits, or deletes tags for a health check or a hosted zone.

For information about using tags for cost allocation, see Using Cost
Allocation Tags in the I<AWS Billing and Cost Management User Guide>.


=head2 CreateHealthCheck(CallerReference => Str, HealthCheckConfig => L<Paws::Route53::HealthCheckConfig>)

Each argument is described in detail in: L<Paws::Route53::CreateHealthCheck>

Returns: a L<Paws::Route53::CreateHealthCheckResponse> instance

  Creates a new health check.

For information about adding health checks to resource record sets, see
ResourceRecordSet$HealthCheckId in ChangeResourceRecordSets.

B<ELB Load Balancers>

If you're registering EC2 instances with an Elastic Load Balancing
(ELB) load balancer, do not create Amazon Route 53 health checks for
the EC2 instances. When you register an EC2 instance with a load
balancer, you configure settings for an ELB health check, which
performs a similar function to an Amazon Route 53 health check.

B<Private Hosted Zones>

You can associate health checks with failover resource record sets in a
private hosted zone. Note the following:

=over

=item *

Amazon Route 53 health checkers are outside the VPC. To check the
health of an endpoint within a VPC by IP address, you must assign a
public IP address to the instance in the VPC.

=item *

You can configure a health checker to check the health of an external
resource that the instance relies on, such as a database server.

=item *

You can create a CloudWatch metric, associate an alarm with the metric,
and then create a health check that is based on the state of the alarm.
For example, you might create a CloudWatch metric that checks the
status of the Amazon EC2 C<StatusCheckFailed> metric, add an alarm to
the metric, and then create a health check that is based on the state
of the alarm. For information about creating CloudWatch metrics and
alarms by using the CloudWatch console, see the Amazon CloudWatch User
Guide.

=back



=head2 CreateHostedZone(CallerReference => Str, Name => Str, [DelegationSetId => Str, HostedZoneConfig => L<Paws::Route53::HostedZoneConfig>, VPC => L<Paws::Route53::VPC>])

Each argument is described in detail in: L<Paws::Route53::CreateHostedZone>

Returns: a L<Paws::Route53::CreateHostedZoneResponse> instance

  Creates a new public hosted zone, which you use to specify how the
Domain Name System (DNS) routes traffic on the Internet for a domain,
such as example.com, and its subdomains.

You can't convert a public hosted zones to a private hosted zone or
vice versa. Instead, you must create a new hosted zone with the same
name and create new resource record sets.

For more information about charges for hosted zones, see Amazon Route
53 Pricing.

Note the following:

=over

=item *

You can't create a hosted zone for a top-level domain (TLD).

=item *

Amazon Route 53 automatically creates a default SOA record and four NS
records for the zone. For more information about SOA and NS records,
see NS and SOA Records that Amazon Route 53 Creates for a Hosted Zone
in the I<Amazon Route 53 Developer Guide>.

If you want to use the same name servers for multiple hosted zones, you
can optionally associate a reusable delegation set with the hosted
zone. See the C<DelegationSetId> element.

=item *

If your domain is registered with a registrar other than Amazon Route
53, you must update the name servers with your registrar to make Amazon
Route 53 your DNS service. For more information, see Configuring Amazon
Route 53 as your DNS Service in the I<Amazon Route 53 Developer Guide>.

=back

When you submit a C<CreateHostedZone> request, the initial status of
the hosted zone is C<PENDING>. This means that the NS and SOA records
are not yet available on all Amazon Route 53 DNS servers. When the NS
and SOA records are available, the status of the zone changes to
C<INSYNC>.


=head2 CreateReusableDelegationSet(CallerReference => Str, [HostedZoneId => Str])

Each argument is described in detail in: L<Paws::Route53::CreateReusableDelegationSet>

Returns: a L<Paws::Route53::CreateReusableDelegationSetResponse> instance

  Creates a delegation set (a group of four name servers) that can be
reused by multiple hosted zones. If a hosted zoned ID is specified,
C<CreateReusableDelegationSet> marks the delegation set associated with
that zone as reusable

A reusable delegation set can't be associated with a private hosted
zone.

For information on how to use a reusable delegation set to configure
white label name servers, see Configuring White Label Name Servers.


=head2 CreateTrafficPolicy(Document => Str, Name => Str, [Comment => Str])

Each argument is described in detail in: L<Paws::Route53::CreateTrafficPolicy>

Returns: a L<Paws::Route53::CreateTrafficPolicyResponse> instance

  Creates a traffic policy, which you use to create multiple DNS resource
record sets for one domain name (such as example.com) or one subdomain
name (such as www.example.com).


=head2 CreateTrafficPolicyInstance(HostedZoneId => Str, Name => Str, TrafficPolicyId => Str, TrafficPolicyVersion => Int, TTL => Int)

Each argument is described in detail in: L<Paws::Route53::CreateTrafficPolicyInstance>

Returns: a L<Paws::Route53::CreateTrafficPolicyInstanceResponse> instance

  Creates resource record sets in a specified hosted zone based on the
settings in a specified traffic policy version. In addition,
C<CreateTrafficPolicyInstance> associates the resource record sets with
a specified domain name (such as example.com) or subdomain name (such
as www.example.com). Amazon Route 53 responds to DNS queries for the
domain or subdomain name by using the resource record sets that
C<CreateTrafficPolicyInstance> created.


=head2 CreateTrafficPolicyVersion(Document => Str, Id => Str, [Comment => Str])

Each argument is described in detail in: L<Paws::Route53::CreateTrafficPolicyVersion>

Returns: a L<Paws::Route53::CreateTrafficPolicyVersionResponse> instance

  Creates a new version of an existing traffic policy. When you create a
new version of a traffic policy, you specify the ID of the traffic
policy that you want to update and a JSON-formatted document that
describes the new version. You use traffic policies to create multiple
DNS resource record sets for one domain name (such as example.com) or
one subdomain name (such as www.example.com). You can create a maximum
of 1000 versions of a traffic policy. If you reach the limit and need
to create another version, you'll need to start a new traffic policy.


=head2 CreateVPCAssociationAuthorization(HostedZoneId => Str, VPC => L<Paws::Route53::VPC>)

Each argument is described in detail in: L<Paws::Route53::CreateVPCAssociationAuthorization>

Returns: a L<Paws::Route53::CreateVPCAssociationAuthorizationResponse> instance

  Authorizes the AWS account that created a specified VPC to submit an
C<AssociateVPCWithHostedZone> request to associate the VPC with a
specified hosted zone that was created by a different account. To
submit a C<CreateVPCAssociationAuthorization> request, you must use the
account that created the hosted zone. After you authorize the
association, use the account that created the VPC to submit an
C<AssociateVPCWithHostedZone> request.

If you want to associate multiple VPCs that you created by using one
account with a hosted zone that you created by using a different
account, you must submit one authorization request for each VPC.


=head2 DeleteHealthCheck(HealthCheckId => Str)

Each argument is described in detail in: L<Paws::Route53::DeleteHealthCheck>

Returns: a L<Paws::Route53::DeleteHealthCheckResponse> instance

  Deletes a health check.

Amazon Route 53 does not prevent you from deleting a health check even
if the health check is associated with one or more resource record
sets. If you delete a health check and you don't update the associated
resource record sets, the future status of the health check can't be
predicted and may change. This will affect the routing of DNS queries
for your DNS failover configuration. For more information, see
Replacing and Deleting Health Checks in the I<Amazon Route 53 Developer
Guide>.


=head2 DeleteHostedZone(Id => Str)

Each argument is described in detail in: L<Paws::Route53::DeleteHostedZone>

Returns: a L<Paws::Route53::DeleteHostedZoneResponse> instance

  Deletes a hosted zone.

If the name servers for the hosted zone are associated with a domain
and if you want to make the domain unavailable on the Internet, we
recommend that you delete the name servers from the domain to prevent
future DNS queries from possibly being misrouted. If the domain is
registered with Amazon Route 53, see C<UpdateDomainNameservers>. If the
domain is registered with another registrar, use the method provided by
the registrar to delete name servers for the domain.

Some domain registries don't allow you to remove all of the name
servers for a domain. If the registry for your domain requires one or
more name servers, we recommend that you delete the hosted zone only if
you transfer DNS service to another service provider, and you replace
the name servers for the domain with name servers from the new
provider.

You can delete a hosted zone only if it contains only the default SOA
record and NS resource record sets. If the hosted zone contains other
resource record sets, you must delete them before you can delete the
hosted zone. If you try to delete a hosted zone that contains other
resource record sets, the request fails, and Amazon Route 53 returns a
C<HostedZoneNotEmpty> error. For information about deleting records
from your hosted zone, see ChangeResourceRecordSets.

To verify that the hosted zone has been deleted, do one of the
following:

=over

=item *

Use the C<GetHostedZone> action to request information about the hosted
zone.

=item *

Use the C<ListHostedZones> action to get a list of the hosted zones
associated with the current AWS account.

=back



=head2 DeleteReusableDelegationSet(Id => Str)

Each argument is described in detail in: L<Paws::Route53::DeleteReusableDelegationSet>

Returns: a L<Paws::Route53::DeleteReusableDelegationSetResponse> instance

  Deletes a reusable delegation set.

You can delete a reusable delegation set only if it isn't associated
with any hosted zones.

To verify that the reusable delegation set is not associated with any
hosted zones, submit a GetReusableDelegationSet request and specify the
ID of the reusable delegation set that you want to delete.


=head2 DeleteTrafficPolicy(Id => Str, Version => Int)

Each argument is described in detail in: L<Paws::Route53::DeleteTrafficPolicy>

Returns: a L<Paws::Route53::DeleteTrafficPolicyResponse> instance

  Deletes a traffic policy.


=head2 DeleteTrafficPolicyInstance(Id => Str)

Each argument is described in detail in: L<Paws::Route53::DeleteTrafficPolicyInstance>

Returns: a L<Paws::Route53::DeleteTrafficPolicyInstanceResponse> instance

  Deletes a traffic policy instance and all of the resource record sets
that Amazon Route 53 created when you created the instance.

In the Amazon Route 53 console, traffic policy instances are known as
policy records.


=head2 DeleteVPCAssociationAuthorization(HostedZoneId => Str, VPC => L<Paws::Route53::VPC>)

Each argument is described in detail in: L<Paws::Route53::DeleteVPCAssociationAuthorization>

Returns: a L<Paws::Route53::DeleteVPCAssociationAuthorizationResponse> instance

  Removes authorization to submit an C<AssociateVPCWithHostedZone>
request to associate a specified VPC with a hosted zone that was
created by a different account. You must use the account that created
the hosted zone to submit a C<DeleteVPCAssociationAuthorization>
request.

Sending this request only prevents the AWS account that created the VPC
from associating the VPC with the Amazon Route 53 hosted zone in the
future. If the VPC is already associated with the hosted zone,
C<DeleteVPCAssociationAuthorization> won't disassociate the VPC from
the hosted zone. If you want to delete an existing association, use
C<DisassociateVPCFromHostedZone>.


=head2 DisassociateVPCFromHostedZone(HostedZoneId => Str, VPC => L<Paws::Route53::VPC>, [Comment => Str])

Each argument is described in detail in: L<Paws::Route53::DisassociateVPCFromHostedZone>

Returns: a L<Paws::Route53::DisassociateVPCFromHostedZoneResponse> instance

  Disassociates a VPC from a Amazon Route 53 private hosted zone.

You can't disassociate the last VPC from a private hosted zone.

You can't disassociate a VPC from a private hosted zone when only one
VPC is associated with the hosted zone. You also can't convert a
private hosted zone into a public hosted zone.


=head2 GetChange(Id => Str)

Each argument is described in detail in: L<Paws::Route53::GetChange>

Returns: a L<Paws::Route53::GetChangeResponse> instance

  Returns the current status of a change batch request. The status is one
of the following values:

=over

=item *

C<PENDING> indicates that the changes in this request have not
propagated to all Amazon Route 53 DNS servers. This is the initial
status of all change batch requests.

=item *

C<INSYNC> indicates that the changes have propagated to all Amazon
Route 53 DNS servers.

=back



=head2 GetCheckerIpRanges()

Each argument is described in detail in: L<Paws::Route53::GetCheckerIpRanges>

Returns: a L<Paws::Route53::GetCheckerIpRangesResponse> instance

  C<GetCheckerIpRanges> still works, but we recommend that you download
ip-ranges.json, which includes IP address ranges for all AWS services.
For more information, see IP Address Ranges of Amazon Route 53 Servers
in the I<Amazon Route 53 Developer Guide>.


=head2 GetGeoLocation([ContinentCode => Str, CountryCode => Str, SubdivisionCode => Str])

Each argument is described in detail in: L<Paws::Route53::GetGeoLocation>

Returns: a L<Paws::Route53::GetGeoLocationResponse> instance

  Gets information about whether a specified geographic location is
supported for Amazon Route 53 geolocation resource record sets.

Use the following syntax to determine whether a continent is supported
for geolocation:

C<GET /2013-04-01/geolocation?ContinentCode=I<two-letter abbreviation
for a continent>>

Use the following syntax to determine whether a country is supported
for geolocation:

C<GET /2013-04-01/geolocation?CountryCode=I<two-character country
code>>

Use the following syntax to determine whether a subdivision of a
country is supported for geolocation:

C<GET /2013-04-01/geolocation?CountryCode=I<two-character country
code>&SubdivisionCode=I<subdivision code>>


=head2 GetHealthCheck(HealthCheckId => Str)

Each argument is described in detail in: L<Paws::Route53::GetHealthCheck>

Returns: a L<Paws::Route53::GetHealthCheckResponse> instance

  Gets information about a specified health check.


=head2 GetHealthCheckCount()

Each argument is described in detail in: L<Paws::Route53::GetHealthCheckCount>

Returns: a L<Paws::Route53::GetHealthCheckCountResponse> instance

  Retrieves the number of health checks that are associated with the
current AWS account.


=head2 GetHealthCheckLastFailureReason(HealthCheckId => Str)

Each argument is described in detail in: L<Paws::Route53::GetHealthCheckLastFailureReason>

Returns: a L<Paws::Route53::GetHealthCheckLastFailureReasonResponse> instance

  Gets the reason that a specified health check failed most recently.


=head2 GetHealthCheckStatus(HealthCheckId => Str)

Each argument is described in detail in: L<Paws::Route53::GetHealthCheckStatus>

Returns: a L<Paws::Route53::GetHealthCheckStatusResponse> instance

  Gets status of a specified health check.


=head2 GetHostedZone(Id => Str)

Each argument is described in detail in: L<Paws::Route53::GetHostedZone>

Returns: a L<Paws::Route53::GetHostedZoneResponse> instance

  Gets information about a specified hosted zone including the four name
servers assigned to the hosted zone.


=head2 GetHostedZoneCount()

Each argument is described in detail in: L<Paws::Route53::GetHostedZoneCount>

Returns: a L<Paws::Route53::GetHostedZoneCountResponse> instance

  Retrieves the number of hosted zones that are associated with the
current AWS account.


=head2 GetReusableDelegationSet(Id => Str)

Each argument is described in detail in: L<Paws::Route53::GetReusableDelegationSet>

Returns: a L<Paws::Route53::GetReusableDelegationSetResponse> instance

  Retrieves information about a specified reusable delegation set,
including the four name servers that are assigned to the delegation
set.


=head2 GetTrafficPolicy(Id => Str, Version => Int)

Each argument is described in detail in: L<Paws::Route53::GetTrafficPolicy>

Returns: a L<Paws::Route53::GetTrafficPolicyResponse> instance

  Gets information about a specific traffic policy version.


=head2 GetTrafficPolicyInstance(Id => Str)

Each argument is described in detail in: L<Paws::Route53::GetTrafficPolicyInstance>

Returns: a L<Paws::Route53::GetTrafficPolicyInstanceResponse> instance

  Gets information about a specified traffic policy instance.

After you submit a C<CreateTrafficPolicyInstance> or an
C<UpdateTrafficPolicyInstance> request, there's a brief delay while
Amazon Route 53 creates the resource record sets that are specified in
the traffic policy definition. For more information, see the C<State>
response element.

In the Amazon Route 53 console, traffic policy instances are known as
policy records.


=head2 GetTrafficPolicyInstanceCount()

Each argument is described in detail in: L<Paws::Route53::GetTrafficPolicyInstanceCount>

Returns: a L<Paws::Route53::GetTrafficPolicyInstanceCountResponse> instance

  Gets the number of traffic policy instances that are associated with
the current AWS account.


=head2 ListGeoLocations([MaxItems => Str, StartContinentCode => Str, StartCountryCode => Str, StartSubdivisionCode => Str])

Each argument is described in detail in: L<Paws::Route53::ListGeoLocations>

Returns: a L<Paws::Route53::ListGeoLocationsResponse> instance

  Retrieves a list of supported geo locations.

Countries are listed first, and continents are listed last. If Amazon
Route 53 supports subdivisions for a country (for example, states or
provinces), the subdivisions for that country are listed in
alphabetical order immediately after the corresponding country.


=head2 ListHealthChecks([Marker => Str, MaxItems => Str])

Each argument is described in detail in: L<Paws::Route53::ListHealthChecks>

Returns: a L<Paws::Route53::ListHealthChecksResponse> instance

  Retrieve a list of the health checks that are associated with the
current AWS account.


=head2 ListHostedZones([DelegationSetId => Str, Marker => Str, MaxItems => Str])

Each argument is described in detail in: L<Paws::Route53::ListHostedZones>

Returns: a L<Paws::Route53::ListHostedZonesResponse> instance

  Retrieves a list of the public and private hosted zones that are
associated with the current AWS account. The response includes a
C<HostedZones> child element for each hosted zone.

Amazon Route 53 returns a maximum of 100 items in each response. If you
have a lot of hosted zones, you can use the C<maxitems> parameter to
list them in groups of up to 100.


=head2 ListHostedZonesByName([DNSName => Str, HostedZoneId => Str, MaxItems => Str])

Each argument is described in detail in: L<Paws::Route53::ListHostedZonesByName>

Returns: a L<Paws::Route53::ListHostedZonesByNameResponse> instance

  Retrieves a list of your hosted zones in lexicographic order. The
response includes a C<HostedZones> child element for each hosted zone
created by the current AWS account.

C<ListHostedZonesByName> sorts hosted zones by name with the labels
reversed. For example:

C<com.example.www.>

Note the trailing dot, which can change the sort order in some
circumstances.

If the domain name includes escape characters or Punycode,
C<ListHostedZonesByName> alphabetizes the domain name using the escaped
or Punycoded value, which is the format that Amazon Route 53 saves in
its database. For example, to create a hosted zone for
exE<auml>mple.com, you specify ex\344mple.com for the domain name.
C<ListHostedZonesByName> alphabetizes it as:

C<com.ex\344mple.>

The labels are reversed and alphabetized using the escaped value. For
more information about valid domain name formats, including
internationalized domain names, see DNS Domain Name Format in the
I<Amazon Route 53 Developer Guide>.

Amazon Route 53 returns up to 100 items in each response. If you have a
lot of hosted zones, use the C<MaxItems> parameter to list them in
groups of up to 100. The response includes values that help navigate
from one group of C<MaxItems> hosted zones to the next:

=over

=item *

The C<DNSName> and C<HostedZoneId> elements in the response contain the
values, if any, specified for the C<dnsname> and C<hostedzoneid>
parameters in the request that produced the current response.

=item *

The C<MaxItems> element in the response contains the value, if any,
that you specified for the C<maxitems> parameter in the request that
produced the current response.

=item *

If the value of C<IsTruncated> in the response is true, there are more
hosted zones associated with the current AWS account.

If C<IsTruncated> is false, this response includes the last hosted zone
that is associated with the current account. The C<NextDNSName> element
and C<NextHostedZoneId> elements are omitted from the response.

=item *

The C<NextDNSName> and C<NextHostedZoneId> elements in the response
contain the domain name and the hosted zone ID of the next hosted zone
that is associated with the current AWS account. If you want to list
more hosted zones, make another call to C<ListHostedZonesByName>, and
specify the value of C<NextDNSName> and C<NextHostedZoneId> in the
C<dnsname> and C<hostedzoneid> parameters, respectively.

=back



=head2 ListResourceRecordSets(HostedZoneId => Str, [MaxItems => Str, StartRecordIdentifier => Str, StartRecordName => Str, StartRecordType => Str])

Each argument is described in detail in: L<Paws::Route53::ListResourceRecordSets>

Returns: a L<Paws::Route53::ListResourceRecordSetsResponse> instance

  Lists the resource record sets in a specified hosted zone.

C<ListResourceRecordSets> returns up to 100 resource record sets at a
time in ASCII order, beginning at a position specified by the C<name>
and C<type> elements. The action sorts results first by DNS name with
the labels reversed, for example:

C<com.example.www.>

Note the trailing dot, which can change the sort order in some
circumstances.

When multiple records have the same DNS name, the action sorts results
by the record type.

You can use the name and type elements to adjust the beginning position
of the list of resource record sets returned:

=over

=item If you do not specify Name or Type

The results begin with the first resource record set that the hosted
zone contains.

=item If you specify Name but not Type

The results begin with the first resource record set in the list whose
name is greater than or equal to C<Name>.

=item If you specify Type but not Name

Amazon Route 53 returns the C<InvalidInput> error.

=item If you specify both Name and Type

The results begin with the first resource record set in the list whose
name is greater than or equal to C<Name>, and whose type is greater
than or equal to C<Type>.

=back

This action returns the most current version of the records. This
includes records that are C<PENDING>, and that are not yet available on
all Amazon Route 53 DNS servers.

To ensure that you get an accurate listing of the resource record sets
for a hosted zone at a point in time, do not submit a
C<ChangeResourceRecordSets> request while you're paging through the
results of a C<ListResourceRecordSets> request. If you do, some pages
may display results without the latest changes while other pages
display results with the latest changes.


=head2 ListReusableDelegationSets([Marker => Str, MaxItems => Str])

Each argument is described in detail in: L<Paws::Route53::ListReusableDelegationSets>

Returns: a L<Paws::Route53::ListReusableDelegationSetsResponse> instance

  Retrieves a list of the reusable delegation sets that are associated
with the current AWS account.


=head2 ListTagsForResource(ResourceId => Str, ResourceType => Str)

Each argument is described in detail in: L<Paws::Route53::ListTagsForResource>

Returns: a L<Paws::Route53::ListTagsForResourceResponse> instance

  Lists tags for one health check or hosted zone.

For information about using tags for cost allocation, see Using Cost
Allocation Tags in the I<AWS Billing and Cost Management User Guide>.


=head2 ListTagsForResources(ResourceIds => ArrayRef[Str|Undef], ResourceType => Str)

Each argument is described in detail in: L<Paws::Route53::ListTagsForResources>

Returns: a L<Paws::Route53::ListTagsForResourcesResponse> instance

  Lists tags for up to 10 health checks or hosted zones.

For information about using tags for cost allocation, see Using Cost
Allocation Tags in the I<AWS Billing and Cost Management User Guide>.


=head2 ListTrafficPolicies([MaxItems => Str, TrafficPolicyIdMarker => Str])

Each argument is described in detail in: L<Paws::Route53::ListTrafficPolicies>

Returns: a L<Paws::Route53::ListTrafficPoliciesResponse> instance

  Gets information about the latest version for every traffic policy that
is associated with the current AWS account. Policies are listed in the
order in which they were created.


=head2 ListTrafficPolicyInstances([HostedZoneIdMarker => Str, MaxItems => Str, TrafficPolicyInstanceNameMarker => Str, TrafficPolicyInstanceTypeMarker => Str])

Each argument is described in detail in: L<Paws::Route53::ListTrafficPolicyInstances>

Returns: a L<Paws::Route53::ListTrafficPolicyInstancesResponse> instance

  Gets information about the traffic policy instances that you created by
using the current AWS account.

After you submit an C<UpdateTrafficPolicyInstance> request, there's a
brief delay while Amazon Route 53 creates the resource record sets that
are specified in the traffic policy definition. For more information,
see the C<State> response element.

Amazon Route 53 returns a maximum of 100 items in each response. If you
have a lot of traffic policy instances, you can use the C<MaxItems>
parameter to list them in groups of up to 100.


=head2 ListTrafficPolicyInstancesByHostedZone(HostedZoneId => Str, [MaxItems => Str, TrafficPolicyInstanceNameMarker => Str, TrafficPolicyInstanceTypeMarker => Str])

Each argument is described in detail in: L<Paws::Route53::ListTrafficPolicyInstancesByHostedZone>

Returns: a L<Paws::Route53::ListTrafficPolicyInstancesByHostedZoneResponse> instance

  Gets information about the traffic policy instances that you created in
a specified hosted zone.

After you submit a C<CreateTrafficPolicyInstance> or an
C<UpdateTrafficPolicyInstance> request, there's a brief delay while
Amazon Route 53 creates the resource record sets that are specified in
the traffic policy definition. For more information, see the C<State>
response element.

Amazon Route 53 returns a maximum of 100 items in each response. If you
have a lot of traffic policy instances, you can use the C<MaxItems>
parameter to list them in groups of up to 100.


=head2 ListTrafficPolicyInstancesByPolicy(TrafficPolicyId => Str, TrafficPolicyVersion => Int, [HostedZoneIdMarker => Str, MaxItems => Str, TrafficPolicyInstanceNameMarker => Str, TrafficPolicyInstanceTypeMarker => Str])

Each argument is described in detail in: L<Paws::Route53::ListTrafficPolicyInstancesByPolicy>

Returns: a L<Paws::Route53::ListTrafficPolicyInstancesByPolicyResponse> instance

  Gets information about the traffic policy instances that you created by
using a specify traffic policy version.

After you submit a C<CreateTrafficPolicyInstance> or an
C<UpdateTrafficPolicyInstance> request, there's a brief delay while
Amazon Route 53 creates the resource record sets that are specified in
the traffic policy definition. For more information, see the C<State>
response element.

Amazon Route 53 returns a maximum of 100 items in each response. If you
have a lot of traffic policy instances, you can use the C<MaxItems>
parameter to list them in groups of up to 100.


=head2 ListTrafficPolicyVersions(Id => Str, [MaxItems => Str, TrafficPolicyVersionMarker => Str])

Each argument is described in detail in: L<Paws::Route53::ListTrafficPolicyVersions>

Returns: a L<Paws::Route53::ListTrafficPolicyVersionsResponse> instance

  Gets information about all of the versions for a specified traffic
policy.

Traffic policy versions are listed in numerical order by
C<VersionNumber>.


=head2 ListVPCAssociationAuthorizations(HostedZoneId => Str, [MaxResults => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::Route53::ListVPCAssociationAuthorizations>

Returns: a L<Paws::Route53::ListVPCAssociationAuthorizationsResponse> instance

  Gets a list of the VPCs that were created by other accounts and that
can be associated with a specified hosted zone because you've submitted
one or more C<CreateVPCAssociationAuthorization> requests.

The response includes a C<VPCs> element with a C<VPC> child element for
each VPC that can be associated with the hosted zone.


=head2 TestDNSAnswer(HostedZoneId => Str, RecordName => Str, RecordType => Str, [EDNS0ClientSubnetIP => Str, EDNS0ClientSubnetMask => Str, ResolverIP => Str])

Each argument is described in detail in: L<Paws::Route53::TestDNSAnswer>

Returns: a L<Paws::Route53::TestDNSAnswerResponse> instance

  Gets the value that Amazon Route 53 returns in response to a DNS
request for a specified record name and type. You can optionally
specify the IP address of a DNS resolver, an EDNS0 client subnet IP
address, and a subnet mask.


=head2 UpdateHealthCheck(HealthCheckId => Str, [AlarmIdentifier => L<Paws::Route53::AlarmIdentifier>, ChildHealthChecks => ArrayRef[Str|Undef], EnableSNI => Bool, FailureThreshold => Int, FullyQualifiedDomainName => Str, HealthCheckVersion => Int, HealthThreshold => Int, InsufficientDataHealthStatus => Str, Inverted => Bool, IPAddress => Str, Port => Int, Regions => ArrayRef[Str|Undef], ResourcePath => Str, SearchString => Str])

Each argument is described in detail in: L<Paws::Route53::UpdateHealthCheck>

Returns: a L<Paws::Route53::UpdateHealthCheckResponse> instance

  Updates an existing health check. Note that some values can't be
updated.

For more information about updating health checks, see Creating,
Updating, and Deleting Health Checks in the I<Amazon Route 53 Developer
Guide>.


=head2 UpdateHostedZoneComment(Id => Str, [Comment => Str])

Each argument is described in detail in: L<Paws::Route53::UpdateHostedZoneComment>

Returns: a L<Paws::Route53::UpdateHostedZoneCommentResponse> instance

  Updates the comment for a specified hosted zone.


=head2 UpdateTrafficPolicyComment(Comment => Str, Id => Str, Version => Int)

Each argument is described in detail in: L<Paws::Route53::UpdateTrafficPolicyComment>

Returns: a L<Paws::Route53::UpdateTrafficPolicyCommentResponse> instance

  Updates the comment for a specified traffic policy version.


=head2 UpdateTrafficPolicyInstance(Id => Str, TrafficPolicyId => Str, TrafficPolicyVersion => Int, TTL => Int)

Each argument is described in detail in: L<Paws::Route53::UpdateTrafficPolicyInstance>

Returns: a L<Paws::Route53::UpdateTrafficPolicyInstanceResponse> instance

  Updates the resource record sets in a specified hosted zone that were
created based on the settings in a specified traffic policy version.

When you update a traffic policy instance, Amazon Route 53 continues to
respond to DNS queries for the root resource record set name (such as
example.com) while it replaces one group of resource record sets with
another. Amazon Route 53 performs the following operations:

=over

=item 1.

Amazon Route 53 creates a new group of resource record sets based on
the specified traffic policy. This is true regardless of how
significant the differences are between the existing resource record
sets and the new resource record sets.

=item 2.

When all of the new resource record sets have been created, Amazon
Route 53 starts to respond to DNS queries for the root resource record
set name (such as example.com) by using the new resource record sets.

=item 3.

Amazon Route 53 deletes the old group of resource record sets that are
associated with the root resource record set name.

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllHealthChecks(sub { },[Marker => Str, MaxItems => Str])

=head2 ListAllHealthChecks([Marker => Str, MaxItems => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HealthChecks, passing the object as the first parameter, and the string 'HealthChecks' as the second parameter 

If not, it will return a a L<Paws::Route53::ListHealthChecksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllHostedZones(sub { },[DelegationSetId => Str, Marker => Str, MaxItems => Str])

=head2 ListAllHostedZones([DelegationSetId => Str, Marker => Str, MaxItems => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HostedZones, passing the object as the first parameter, and the string 'HostedZones' as the second parameter 

If not, it will return a a L<Paws::Route53::ListHostedZonesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourceRecordSets(sub { },HostedZoneId => Str, [MaxItems => Str, StartRecordIdentifier => Str, StartRecordName => Str, StartRecordType => Str])

=head2 ListAllResourceRecordSets(HostedZoneId => Str, [MaxItems => Str, StartRecordIdentifier => Str, StartRecordName => Str, StartRecordType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceRecordSets, passing the object as the first parameter, and the string 'ResourceRecordSets' as the second parameter 

If not, it will return a a L<Paws::Route53::ListResourceRecordSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

