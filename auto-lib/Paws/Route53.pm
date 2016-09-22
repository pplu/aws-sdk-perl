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
  sub GetChangeDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::GetChangeDetails', @_);
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
  sub ListChangeBatchesByHostedZone {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::ListChangeBatchesByHostedZone', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChangeBatchesByRRSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53::ListChangeBatchesByRRSet', @_);
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
      my $params = {};
      $params->{ HealthChecks } = $result->HealthChecks;

      while ($result->IsTruncated) {
        $result = $self->ListHealthChecks(@_, Marker => $result->NextMarker);
        push @{ $params->{ HealthChecks } }, @{ $result->HealthChecks };
      }
      $self->new_with_coercions(Paws::Route53::ListHealthChecks->_returns, %$params);
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
      my $params = {};
      $params->{ HostedZones } = $result->HostedZones;

      while ($result->IsTruncated) {
        $result = $self->ListHostedZones(@_, Marker => $result->NextMarker);
        push @{ $params->{ HostedZones } }, @{ $result->HostedZones };
      }
      $self->new_with_coercions(Paws::Route53::ListHostedZones->_returns, %$params);
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
      my $params = {};
      $params->{ ResourceRecordSets } = $result->ResourceRecordSets;

      while ($result->IsTruncated) {
        $result = $self->ListResourceRecordSets(@_, StartRecordName => $result->NextRecordName, StartRecordType => $result->NextRecordType, StartRecordIdentifier => $result->NextRecordIdentifier);
        push @{ $params->{ ResourceRecordSets } }, @{ $result->ResourceRecordSets };
      }
      $self->new_with_coercions(Paws::Route53::ListResourceRecordSets->_returns, %$params);
    } else {
      while ($result->IsTruncated) {
        $result = $self->ListResourceRecordSets(@_, StartRecordName => $result->NextRecordName, StartRecordType => $result->NextRecordType, StartRecordIdentifier => $result->NextRecordIdentifier);
        $callback->($_ => 'ResourceRecordSets') foreach (@{ $result->ResourceRecordSets });
      }
    }

    return undef
  }


  sub operations { qw/AssociateVPCWithHostedZone ChangeResourceRecordSets ChangeTagsForResource CreateHealthCheck CreateHostedZone CreateReusableDelegationSet CreateTrafficPolicy CreateTrafficPolicyInstance CreateTrafficPolicyVersion DeleteHealthCheck DeleteHostedZone DeleteReusableDelegationSet DeleteTrafficPolicy DeleteTrafficPolicyInstance DisassociateVPCFromHostedZone GetChange GetChangeDetails GetCheckerIpRanges GetGeoLocation GetHealthCheck GetHealthCheckCount GetHealthCheckLastFailureReason GetHealthCheckStatus GetHostedZone GetHostedZoneCount GetReusableDelegationSet GetTrafficPolicy GetTrafficPolicyInstance GetTrafficPolicyInstanceCount ListChangeBatchesByHostedZone ListChangeBatchesByRRSet ListGeoLocations ListHealthChecks ListHostedZones ListHostedZonesByName ListResourceRecordSets ListReusableDelegationSets ListTagsForResource ListTagsForResources ListTrafficPolicies ListTrafficPolicyInstances ListTrafficPolicyInstancesByHostedZone ListTrafficPolicyInstancesByPolicy ListTrafficPolicyVersions TestDNSAnswer UpdateHealthCheck UpdateHostedZoneComment UpdateTrafficPolicyComment UpdateTrafficPolicyInstance / }

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

The VPC and the hosted zone must already exist, and you must have
created a private hosted zone. You cannot convert a public hosted zone
into a private hosted zone.

Send a C<POST> request to the C</I<Amazon Route 53 API
version>/hostedzone/I<hosted zone ID>/associatevpc> resource. The
request body must include an XML document with a
C<AssociateVPCWithHostedZoneRequest> element. The response returns the
C<AssociateVPCWithHostedZoneResponse> element.

If you used different accounts to create the hosted zone and to create
the Amazon VPCs that you want to associate with the hosted zone, we
need to update account permissions for you. For more information, see
Associating Amazon VPCs and Private Hosted Zones That You Create with
Different AWS Accounts in the Amazon Route 53 Developer Guide.


=head2 ChangeResourceRecordSets(ChangeBatch => L<Paws::Route53::ChangeBatch>, HostedZoneId => Str)

Each argument is described in detail in: L<Paws::Route53::ChangeResourceRecordSets>

Returns: a L<Paws::Route53::ChangeResourceRecordSetsResponse> instance

  Create, change, update, or delete authoritative DNS information on all
Amazon Route 53 servers. Send a C<POST> request to:

C</2013-04-01/hostedzone/I<Amazon Route 53 hosted Zone ID>/rrset>
resource.

The request body must include a document with a
C<ChangeResourceRecordSetsRequest> element. The request body contains a
list of change items, known as a change batch. Change batches are
considered transactional changes. When using the Amazon Route 53 API to
change resource record sets, Amazon Route 53 either makes all or none
of the changes in a change batch request. This ensures that Amazon
Route 53 never partially implements the intended changes to the
resource record sets in a hosted zone.

For example, a change batch request that deletes the C<CNAME>record for
www.example.com and creates an alias resource record set for
www.example.com. Amazon Route 53 deletes the first resource record set
and creates the second resource record set in a single operation. If
either the C<DELETE> or the C<CREATE> action fails, then both changes
(plus any other changes in the batch) fail, and the original C<CNAME>
record continues to exist.

Due to the nature of transactional changes, you cannot delete the same
resource record set more than once in a single change batch. If you
attempt to delete the same change batch more than once, Amazon Route 53
returns an C<InvalidChangeBatch> error.

To create resource record sets for complex routing configurations, use
either the traffic flow visual editor in the Amazon Route 53 console or
the API actions for traffic policies and traffic policy instances. Save
the configuration as a traffic policy, then associate the traffic
policy with one or more domain names (such as example.com) or subdomain
names (such as www.example.com), in the same hosted zone or in multiple
hosted zones. You can roll back the updates if the new configuration
isn't performing as expected. For more information, see Using Traffic
Flow to Route DNS Traffic in the Amazon Route 53 API Reference or
Actions on Traffic Policies and Traffic Policy Instances in this guide.

Use C<ChangeResourceRecordsSetsRequest> to perform the following
actions:

=over

=item *

C<CREATE>:Creates a resource record set that has the specified values.

=item *

C<DELETE>: Deletes an existing resource record set that has the
specified values for C<Name>, C<Type>, C<Set Identifier> (for code
latency, weighted, geolocation, and failover resource record sets), and
C<TTL> (except alias resource record sets, for which the TTL is
determined by the AWS resource you're routing queries to).

=item *

C<UPSERT>: If a resource record set does not already exist, AWS creates
it. If a resource set does exist, Amazon Route 53 updates it with the
values in the request. Amazon Route 53 can update an existing resource
record set only when all of the following values match: C<Name>,
C<Type>, and C<Set Identifier> (for weighted, latency, geolocation, and
failover resource record sets).

=back

In response to a C<ChangeResourceRecordSets> request, the DNS data is
changed on all Amazon Route 53 DNS servers. Initially, the status of a
change is C<PENDING>, meaning the change has not yet propagated to all
the authoritative Amazon Route 53 DNS servers. When the change is
propagated to all hosts, the change returns a status of C<INSYNC>.

After sending a change request, confirm your change has propagated to
all Amazon Route 53 DNS servers. Changes generally propagate to all
Amazon Route 53 name servers in a few minutes. In rare circumstances,
propagation can take up to 30 minutes. For more information, see
GetChange.

Note the following limitations on a C<ChangeResourceRecordSets>
request:

=over

=item *

A request cannot contain more than 100 Change elements.

=item *

A request cannot contain more than 1000 ResourceRecord elements.

=item *

The sum of the number of characters (including spaces) in all C<Value>
elements in a request cannot exceed 32,000 characters.

=item *

If the value of the Action element in a ChangeResourceRecordSets
request is C<UPSERT> and the resource record set already exists, Amazon
Route 53 automatically performs a C<DELETE> request and a C<CREATE>
request. When Amazon Route 53 calculates the number of characters in
the Value elements of a change batch request, it adds the number of
characters in the Value element of the resource record set being
deleted and the number of characters in the Value element of the
resource record set being created.

=item *

The same resource cannot be deleted more than once in a single batch.

=back

If the value of the Action element in a ChangeResourceRecordSets
request is C<UPSERT> and the resource record set already exists, Amazon
Route 53 automatically performs a C<DELETE> request and a C<CREATE>
request. When Amazon Route 53 calculates the number of characters in
the Value elements of a change batch request, it adds the number of
characters in the Value element of the resource record set being
deleted and the number of characters in the Value element of the
resource record set being created.

For more information on transactional changes, see
ChangeResourceRecordSets.


=head2 ChangeTagsForResource(ResourceId => Str, ResourceType => Str, [AddTags => ArrayRef[L<Paws::Route53::Tag>], RemoveTagKeys => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::Route53::ChangeTagsForResource>

Returns: a L<Paws::Route53::ChangeTagsForResourceResponse> instance

  


=head2 CreateHealthCheck(CallerReference => Str, HealthCheckConfig => L<Paws::Route53::HealthCheckConfig>)

Each argument is described in detail in: L<Paws::Route53::CreateHealthCheck>

Returns: a L<Paws::Route53::CreateHealthCheckResponse> instance

  Creates a new health check.

To create a new health check, send a C<POST> request to the
C</2013-04-01/healthcheck> resource. The request body must include an
XML document with a C<CreateHealthCheckRequest> element. The response
returns the C<CreateHealthCheckResponse> element, containing the health
check ID specified when adding health check to a resource record set.
For information about adding health checks to resource record sets, see
ResourceRecordSet$HealthCheckId in ChangeResourceRecordSets.

If you are registering Amazon EC2 instances with an Elastic Load
Balancing (ELB) load balancer, do not create Amazon Route 53 health
checks for the Amazon EC2 instances. When you register an Amazon EC2
instance with a load balancer, you configure settings for an ELB health
check, which performs a similar function to an Amazon Route 53 health
check.

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
alarms by using the CloudWatch console, see the Amazon CloudWatch
Developer Guide.

=back



=head2 CreateHostedZone(CallerReference => Str, Name => Str, [DelegationSetId => Str, HostedZoneConfig => L<Paws::Route53::HostedZoneConfig>, VPC => L<Paws::Route53::VPC>])

Each argument is described in detail in: L<Paws::Route53::CreateHostedZone>

Returns: a L<Paws::Route53::CreateHostedZoneResponse> instance

  Creates a new public hosted zone, used to specify how the Domain Name
System (DNS) routes traffic on the Internet for a domain, such as
example.com, and its subdomains.

Public hosted zones cannot be converted to a private hosted zone or
vice versa. Instead, create a new hosted zone with the same name and
create new resource record sets.

Send a C<POST> request to the C</I<Amazon Route 53 API
version>/hostedzone> resource. The request body must include an XML
document with a C<CreateHostedZoneRequest> element. The response
returns the C<CreateHostedZoneResponse> element containing metadata
about the hosted zone.

Fore more information about charges for hosted zones, see AmazonAmazon
Route 53 Pricing.

Note the following:

=over

=item *

You cannot create a hosted zone for a top-level domain (TLD).

=item *

Amazon Route 53 automatically creates a default SOA record and four NS
records for the zone. For more information about SOA and NS records,
see NS and SOA Records that Amazon Route 53 Creates for a Hosted Zone
in the I<Amazon Route 53 Developer Guide>.

=item *

If your domain is registered with a registrar other than Amazon Route
53, you must update the name servers with your registrar to make Amazon
Route 53 your DNS service. For more information, see Configuring Amazon
Route 53 as your DNS Service in the I<Amazon Route 53 Developer's
Guide>.

=back

After creating a zone, its initial status is C<PENDING>. This means
that it is not yet available on all DNS servers. The status of the zone
changes to C<INSYNC> when the NS and SOA records are available on all
Amazon Route 53 DNS servers.

When trying to create a hosted zone using a reusable delegation set,
specify an optional DelegationSetId, and Amazon Route 53 would assign
those 4 NS records for the zone, instead of alloting a new one.


=head2 CreateReusableDelegationSet(CallerReference => Str, [HostedZoneId => Str])

Each argument is described in detail in: L<Paws::Route53::CreateReusableDelegationSet>

Returns: a L<Paws::Route53::CreateReusableDelegationSetResponse> instance

  Creates a delegation set (a group of four anem servers) that can be
reused by multiple hosted zones. If a hosted zoned ID is specified,
C<CreateReusableDelegationSet> marks the delegation set associated with
that zone as reusable

Send a C<POST> request to the C</I<Amazon Route 53 API
version>/delegationset> resource. The request body must include an XML
document with a C<CreateReusableDelegationSetRequest> element.

A reusable delegation set cannot be associated with a private hosted
zone/

For more information, including a procedure on how to create and
configure a reusable delegation set (also known as white label name
servers), see Configuring White Label Name Servers.


=head2 CreateTrafficPolicy(Document => Str, Name => Str, [Comment => Str])

Each argument is described in detail in: L<Paws::Route53::CreateTrafficPolicy>

Returns: a L<Paws::Route53::CreateTrafficPolicyResponse> instance

  Creates a traffic policy, which you use to create multiple DNS resource
record sets for one domain name (such as example.com) or one subdomain
name (such as www.example.com).

Send a C<POST> request to the C</I<Amazon Route 53 API
version>/trafficpolicy> resource. The request body must include a
document with a C<CreateTrafficPolicyRequest> element. The response
includes the C<CreateTrafficPolicyResponse> element, which contains
information about the new traffic policy.


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

Send a C<POST> request to the C</I<Amazon Route 53 API
version>/trafficpolicyinstance> resource. The request body must include
a document with a C<CreateTrafficPolicyRequest> element. The response
returns the C<CreateTrafficPolicyInstanceResponse> element, which
contains information about the traffic policy instance.


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

Send a C<POST> request to the C</I<Amazon Route 53
version>/trafficpolicy/> resource. The request body includes a document
with a C<CreateTrafficPolicyVersionRequest> element. The response
returns the C<CreateTrafficPolicyVersionResponse> element, which
contains information about the new version of the traffic policy.


=head2 DeleteHealthCheck(HealthCheckId => Str)

Each argument is described in detail in: L<Paws::Route53::DeleteHealthCheck>

Returns: a L<Paws::Route53::DeleteHealthCheckResponse> instance

  Deletes a health check. Send a C<DELETE> request to the
C</2013-04-01/healthcheck/I<health check ID> > resource.

Amazon Route 53 does not prevent you from deleting a health check even
if the health check is associated with one or more resource record
sets. If you delete a health check and you don't update the associated
resource record sets, the future status of the health check cannot be
predicted and may change. This will affect the routing of DNS queries
for your DNS failover configuration. For more information, see
Replacing and Deleting Health Checks in the Amazon Route 53 Developer
Guide.


=head2 DeleteHostedZone(Id => Str)

Each argument is described in detail in: L<Paws::Route53::DeleteHostedZone>

Returns: a L<Paws::Route53::DeleteHostedZoneResponse> instance

  Deletes a hosted zone. Send a C<DELETE> request to the C</I<Amazon
Route 53 API version>/hostedzone/I<hosted zone ID> > resource.

Delete a hosted zone only if there are no resource record sets other
than the default SOA record and NS resource record sets. If the hosted
zone contains other resource record sets, delete them before deleting
the hosted zone. If you try to delete a hosted zone that contains other
resource record sets, Amazon Route 53 denies your request with a
C<HostedZoneNotEmpty> error. For information about deleting records
from your hosted zone, see ChangeResourceRecordSets.


=head2 DeleteReusableDelegationSet(Id => Str)

Each argument is described in detail in: L<Paws::Route53::DeleteReusableDelegationSet>

Returns: a L<Paws::Route53::DeleteReusableDelegationSetResponse> instance

  Deletes a reusable delegation set. Send a C<DELETE> request to the
C</2013-04-01/delegationset/I<delegation set ID> > resource.

You can delete a reusable delegation set only if there are no
associated hosted zones.

To verify that the reusable delegation set is not associated with any
hosted zones, run the GetReusableDelegationSet action and specify the
ID of the reusable delegation set that you want to delete.


=head2 DeleteTrafficPolicy(Id => Str, Version => Int)

Each argument is described in detail in: L<Paws::Route53::DeleteTrafficPolicy>

Returns: a L<Paws::Route53::DeleteTrafficPolicyResponse> instance

  Deletes a traffic policy.

Send a C<DELETE> request to the C</I<Amazon Route 53 API
version>/trafficpolicy> resource.


=head2 DeleteTrafficPolicyInstance(Id => Str)

Each argument is described in detail in: L<Paws::Route53::DeleteTrafficPolicyInstance>

Returns: a L<Paws::Route53::DeleteTrafficPolicyInstanceResponse> instance

  Deletes a traffic policy instance and all of the resource record sets
that Amazon Route 53 created when you created the instance.

Send a C<DELETE> request to the C</I<Amazon Route 53 API
version>/trafficpolicy/I<traffic policy instance ID> > resource.

In the Amazon Route 53 console, traffic policy instances are known as
policy records.


=head2 DisassociateVPCFromHostedZone(HostedZoneId => Str, VPC => L<Paws::Route53::VPC>, [Comment => Str])

Each argument is described in detail in: L<Paws::Route53::DisassociateVPCFromHostedZone>

Returns: a L<Paws::Route53::DisassociateVPCFromHostedZoneResponse> instance

  Disassociates a VPC from a Amazon Route 53 private hosted zone.

Send a C<POST> request to the C</I<Amazon Route 53 API
version>/hostedzone/I<hosted zone ID>/disassociatevpc> resource. The
request body must include an XML document with a
C<DisassociateVPCFromHostedZoneRequest> element. The response returns
the C<DisassociateVPCFromHostedZoneResponse> element.

You can only disassociate a VPC from a private hosted zone when two or
more VPCs are associated with that hosted zone. You cannot convert a
private hosted zone into a public hosted zone.


=head2 GetChange(Id => Str)

Each argument is described in detail in: L<Paws::Route53::GetChange>

Returns: a L<Paws::Route53::GetChangeResponse> instance

  Returns the current status of a change batch request. The status is one
of the following values:

=over

=item *

C<PENDING> indicates that the changes in this request have not
replicated to all Amazon Route 53 DNS servers. This is the initial
status of all change batch requests.

=item *

C<INSYNC> indicates that the changes have replicated to all Amazon
Route 53 DNS servers.

=back



=head2 GetChangeDetails(Id => Str)

Each argument is described in detail in: L<Paws::Route53::GetChangeDetails>

Returns: a L<Paws::Route53::GetChangeDetailsResponse> instance

  Returns the status and changes of a change batch request.


=head2 GetCheckerIpRanges()

Each argument is described in detail in: L<Paws::Route53::GetCheckerIpRanges>

Returns: a L<Paws::Route53::GetCheckerIpRangesResponse> instance

  Retrieves a list of the IP ranges used by Amazon Route 53 health
checkers to check the health of your resources. Send a C<GET> request
to the C</I<Amazon Route 53 API version>/checkeripranges> resource. Use
these IP addresses to configure router and firewall rules to allow
health checkers to check the health of your resources.


=head2 GetGeoLocation([ContinentCode => Str, CountryCode => Str, SubdivisionCode => Str])

Each argument is described in detail in: L<Paws::Route53::GetGeoLocation>

Returns: a L<Paws::Route53::GetGeoLocationResponse> instance

  Retrieves a single geo location. Send a C<GET> request to the
C</2013-04-01/geolocation> resource with one of these options:
continentcode | countrycode | countrycode and subdivisioncode.


=head2 GetHealthCheck(HealthCheckId => Str)

Each argument is described in detail in: L<Paws::Route53::GetHealthCheck>

Returns: a L<Paws::Route53::GetHealthCheckResponse> instance

  Gets information about a specified health check. Send a C<GET> request
to the C</2013-04-01/healthcheck/I<health check ID> > resource. For
more information about using the console to perform this operation, see
Amazon Route 53 Health Checks and DNS Failover in the Amazon Route 53
Developer Guide.


=head2 GetHealthCheckCount()

Each argument is described in detail in: L<Paws::Route53::GetHealthCheckCount>

Returns: a L<Paws::Route53::GetHealthCheckCountResponse> instance

  To retrieve a count of all your health checks, send a C<GET> request to
the C</2013-04-01/healthcheckcount> resource.


=head2 GetHealthCheckLastFailureReason(HealthCheckId => Str)

Each argument is described in detail in: L<Paws::Route53::GetHealthCheckLastFailureReason>

Returns: a L<Paws::Route53::GetHealthCheckLastFailureReasonResponse> instance

  If you want to learn why a health check is currently failing or why it
failed most recently (if at all), you can get the failure reason for
the most recent failure. Send a C<GET> request to the C</I<Amazon Route
53 API version>/healthcheck/I<health check ID>/lastfailurereason>
resource.


=head2 GetHealthCheckStatus(HealthCheckId => Str)

Each argument is described in detail in: L<Paws::Route53::GetHealthCheckStatus>

Returns: a L<Paws::Route53::GetHealthCheckStatusResponse> instance

  Gets status of a specified health check. Send a C<GET> request to the
C</2013-04-01/healthcheck/I<health check ID>/status> resource. You can
use this call to get a health check's current status.


=head2 GetHostedZone(Id => Str)

Each argument is described in detail in: L<Paws::Route53::GetHostedZone>

Returns: a L<Paws::Route53::GetHostedZoneResponse> instance

  Retrieves the delegation set for a hosted zone, including the four name
servers assigned to the hosted zone. Send a C<GET> request to the
C</I<Amazon Route 53 API version>/hostedzone/I<hosted zone ID> >
resource.


=head2 GetHostedZoneCount()

Each argument is described in detail in: L<Paws::Route53::GetHostedZoneCount>

Returns: a L<Paws::Route53::GetHostedZoneCountResponse> instance

  Retrieves a count of all your hosted zones. Send a C<GET> request to
the C</2013-04-01/hostedzonecount> resource.


=head2 GetReusableDelegationSet(Id => Str)

Each argument is described in detail in: L<Paws::Route53::GetReusableDelegationSet>

Returns: a L<Paws::Route53::GetReusableDelegationSetResponse> instance

  Retrieves the reusable delegation set. Send a C<GET> request to the
C</2013-04-01/delegationset/I<delegation set ID> > resource.


=head2 GetTrafficPolicy(Id => Str, Version => Int)

Each argument is described in detail in: L<Paws::Route53::GetTrafficPolicy>

Returns: a L<Paws::Route53::GetTrafficPolicyResponse> instance

  Gets information about a specific traffic policy version.

Send a C<GET> request to the C</I<Amazon Route 53 API
version>/trafficpolicy> resource.


=head2 GetTrafficPolicyInstance(Id => Str)

Each argument is described in detail in: L<Paws::Route53::GetTrafficPolicyInstance>

Returns: a L<Paws::Route53::GetTrafficPolicyInstanceResponse> instance

  Gets information about a specified traffic policy instance.

Send a C<GET> request to the C</I<Amazon Route 53 API
version>/trafficpolicyinstance> resource.

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

To get the number of traffic policy instances, send a C<GET> request to
the C</2013-04-01/trafficpolicyinstancecount> resource.


=head2 ListChangeBatchesByHostedZone(EndDate => Str, HostedZoneId => Str, StartDate => Str, [Marker => Str, MaxItems => Str])

Each argument is described in detail in: L<Paws::Route53::ListChangeBatchesByHostedZone>

Returns: a L<Paws::Route53::ListChangeBatchesByHostedZoneResponse> instance

  Gets the list of ChangeBatches in a given time period for a given
hosted zone.


=head2 ListChangeBatchesByRRSet(EndDate => Str, HostedZoneId => Str, Name => Str, StartDate => Str, Type => Str, [Marker => Str, MaxItems => Str, SetIdentifier => Str])

Each argument is described in detail in: L<Paws::Route53::ListChangeBatchesByRRSet>

Returns: a L<Paws::Route53::ListChangeBatchesByRRSetResponse> instance

  Gets the list of ChangeBatches in a given time period for a given
hosted zone and RRSet.


=head2 ListGeoLocations([MaxItems => Str, StartContinentCode => Str, StartCountryCode => Str, StartSubdivisionCode => Str])

Each argument is described in detail in: L<Paws::Route53::ListGeoLocations>

Returns: a L<Paws::Route53::ListGeoLocationsResponse> instance

  Retrieves a list of supported geo locations. Send a C<GET> request to
the C</2013-04-01/geolocations> resource. The response to this request
includes a C<GeoLocationDetailsList> element for each location that
Amazon Route 53 supports.

Countries are listed first, and continents are listed last. If Amazon
Route 53 supports subdivisions for a country (for example, states or
provinces), the subdivisions for that country are listed in
alphabetical order immediately after the corresponding country.


=head2 ListHealthChecks([Marker => Str, MaxItems => Str])

Each argument is described in detail in: L<Paws::Route53::ListHealthChecks>

Returns: a L<Paws::Route53::ListHealthChecksResponse> instance

  Retrieve a list of your health checks. Send a C<GET> request to the
C</2013-04-01/healthcheck> resource. The response to this request
includes a C<HealthChecks> element with zero or more C<HealthCheck>
child elements. By default, the list of health checks is displayed on a
single page. You can control the length of the page that is displayed
by using the C<MaxItems> parameter. You can use the C<Marker> parameter
to control the health check that the list begins with.

For information about listing health checks using the Amazon Route 53
console, see Amazon Route 53 Health Checks and DNS Failover.


=head2 ListHostedZones([DelegationSetId => Str, Marker => Str, MaxItems => Str])

Each argument is described in detail in: L<Paws::Route53::ListHostedZones>

Returns: a L<Paws::Route53::ListHostedZonesResponse> instance

  To retrieve a list of your public and private hosted zones, send a
C<GET> request to the C</2013-04-01/hostedzone> resource. The response
to this request includes a C<HostedZones> child element for each hosted
zone created by the current AWS account.

Amazon Route 53 returns a maximum of 100 items in each response. If you
have a lot of hosted zones, you can use the C<maxitems> parameter to
list them in groups of up to 100. The response includes four values
that help navigate from one group of C<maxitems> hosted zones to the
next:

=over

=item *

C<MaxItems>is the value specified for the C<maxitems> parameter in the
request that produced the current response.

=item *

If the value of C<IsTruncated> in the response is true, there are more
hosted zones associated with the current AWS account.

=item *

C<NextMarker>is the hosted zone ID of the next hosted zone that is
associated with the current AWS account. If you want to list more
hosted zones, make another call to C<ListHostedZones>, and specify the
value of the C<NextMarker> element in the marker parameter.

If C<IsTruncated> is false, the C<NextMarker> element is omitted from
the response.

=item *

If you're making the second or subsequent call to C<ListHostedZones>,
the C<Marker> element matches the value that you specified in the
C<marker> parameter in the previous request.

=back



=head2 ListHostedZonesByName([DNSName => Str, HostedZoneId => Str, MaxItems => Str])

Each argument is described in detail in: L<Paws::Route53::ListHostedZonesByName>

Returns: a L<Paws::Route53::ListHostedZonesByNameResponse> instance

  Retrieves a list of your hosted zones in lexicographic order. Send a
C<GET> request to the C</2013-04-01/hostedzonesbyname> resource. The
response includes a C<HostedZones> child element for each hosted zone
created by the current AWS account.

C<ListHostedZonesByName> sorts hosted zones by name with the labels
reversed. For example:

=over

=item *

C<com.example.www.>

=back

Note the trailing dot, which can change the sort order in some
circumstances.

If the domain name includes escape characters or Punycode,
C<ListHostedZonesByName> alphabetizes the domain name using the escaped
or Punycoded value, which is the format that Amazon Route 53 saves in
its database. For example, to create a hosted zone for example.com,
specify ex\344mple.com for the domain name. C<ListHostedZonesByName>
alphabetizes it as:

=over

=item *

C<com.ex\344mple.>

=back

The labels are reversed and alphabetized using the escaped value. For
more information about valid domain name formats, including
internationalized domain names, see DNS Domain Name Format in the
Amazon Route 53 Developer Guide.

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

  


=head2 ListReusableDelegationSets([Marker => Str, MaxItems => Str])

Each argument is described in detail in: L<Paws::Route53::ListReusableDelegationSets>

Returns: a L<Paws::Route53::ListReusableDelegationSetsResponse> instance

  To retrieve a list of your reusable delegation sets, send a C<GET>
request to the C</2013-04-01/delegationset> resource. The response to
this request includes a C<DelegationSets> element with zero, one, or
multiple C<DelegationSet> child elements. By default, the list of
delegation sets is displayed on a single page. You can control the
length of the page that is displayed by using the C<MaxItems>
parameter. You can use the C<Marker> parameter to control the
delegation set that the list begins with.

Amazon Route 53 returns a maximum of 100 items. If you set MaxItems to
a value greater than 100, Amazon Route 53 returns only the first 100.


=head2 ListTagsForResource(ResourceId => Str, ResourceType => Str)

Each argument is described in detail in: L<Paws::Route53::ListTagsForResource>

Returns: a L<Paws::Route53::ListTagsForResourceResponse> instance

  


=head2 ListTagsForResources(ResourceIds => ArrayRef[Str], ResourceType => Str)

Each argument is described in detail in: L<Paws::Route53::ListTagsForResources>

Returns: a L<Paws::Route53::ListTagsForResourcesResponse> instance

  


=head2 ListTrafficPolicies([MaxItems => Str, TrafficPolicyIdMarker => Str])

Each argument is described in detail in: L<Paws::Route53::ListTrafficPolicies>

Returns: a L<Paws::Route53::ListTrafficPoliciesResponse> instance

  Gets information about the latest version for every traffic policy that
is associated with the current AWS account. Send a C<GET> request to
the C</I<Amazon Route 53 API version>/trafficpolicy> resource.

Amazon Route 53 returns a maximum of 100 items in each response. If you
have a lot of traffic policies, you can use the C<maxitems> parameter
to list them in groups of up to 100.

The response includes three values that help you navigate from one
group of C<maxitems> traffic policies to the next:

=over

=item *

B<IsTruncated>

If the value of C<IsTruncated> in the response is C<true>, there are
more traffic policies associated with the current AWS account.

If C<IsTruncated> is C<false>, this response includes the last traffic
policy that is associated with the current account.

=item *

B<TrafficPolicyIdMarker>

If C<IsTruncated> is C<true>, C<TrafficPolicyIdMarker> is the ID of the
first traffic policy in the next group of C<MaxItems> traffic policies.
If you want to list more traffic policies, make another call to
C<ListTrafficPolicies>, and specify the value of the
C<TrafficPolicyIdMarker> element from the response in the
C<TrafficPolicyIdMarker> request parameter.

If C<IsTruncated> is C<false>, the C<TrafficPolicyIdMarker> element is
omitted from the response.

=item *

B<MaxItems>

The value that you specified for the C<MaxItems> parameter in the
request that produced the current response.

=back



=head2 ListTrafficPolicyInstances([HostedZoneIdMarker => Str, MaxItems => Str, TrafficPolicyInstanceNameMarker => Str, TrafficPolicyInstanceTypeMarker => Str])

Each argument is described in detail in: L<Paws::Route53::ListTrafficPolicyInstances>

Returns: a L<Paws::Route53::ListTrafficPolicyInstancesResponse> instance

  Gets information about the traffic policy instances that you created by
using the current AWS account.

After you submit an C<UpdateTrafficPolicyInstance> request, there's a
brief delay while Amazon Route 53 creates the resource record sets that
are specified in the traffic policy definition. For more information,
see the C<State> response element.

Send a C<GET> request to the C</I<Amazon Route 53 API
version>/trafficpolicyinstance> resource.

Amazon Route 53 returns a maximum of 100 items in each response. If you
have a lot of traffic policy instances, you can use the C<MaxItems>
parameter to list them in groups of up to 100.

The response includes five values that help you navigate from one group
of C<MaxItems> traffic policy instances to the next:

=over

=item *

B<IsTruncated>

If the value of C<IsTruncated> in the response is C<true>, there are
more traffic policy instances associated with the current AWS account.

If C<IsTruncated> is C<false>, this response includes the last traffic
policy instance that is associated with the current account.

=item *

B<MaxItems>

The value that you specified for the C<MaxItems> parameter in the
request that produced the current response.

=item *

B<HostedZoneIdMarker>, B<TrafficPolicyInstanceNameMarker>, and
B<TrafficPolicyInstanceTypeMarker>

If C<IsTruncated> is C<true>, these three values in the response
represent the first traffic policy instance in the next group of
C<MaxItems> traffic policy instances. To list more traffic policy
instances, make another call to C<ListTrafficPolicyInstances>, and
specify these values in the corresponding request parameters.

If C<IsTruncated> is C<false>, all three elements are omitted from the
response.

=back



=head2 ListTrafficPolicyInstancesByHostedZone(HostedZoneId => Str, [MaxItems => Str, TrafficPolicyInstanceNameMarker => Str, TrafficPolicyInstanceTypeMarker => Str])

Each argument is described in detail in: L<Paws::Route53::ListTrafficPolicyInstancesByHostedZone>

Returns: a L<Paws::Route53::ListTrafficPolicyInstancesByHostedZoneResponse> instance

  Gets information about the traffic policy instances that you created in
a specified hosted zone.

After you submit an C<UpdateTrafficPolicyInstance> request, there's a
brief delay while Amazon Route 53 creates the resource record sets that
are specified in the traffic policy definition. For more information,
see the C<State> response element.

Send a C<GET> request to the C</I<Amazon Route 53 API
version>/trafficpolicyinstance> resource and include the ID of the
hosted zone.

Amazon Route 53 returns a maximum of 100 items in each response. If you
have a lot of traffic policy instances, you can use the C<MaxItems>
parameter to list them in groups of up to 100.

The response includes four values that help you navigate from one group
of C<MaxItems> traffic policy instances to the next:

=over

=item *

B<IsTruncated>

If the value of C<IsTruncated in the response is C<true>, there are
more traffic policy instances associated with the current AWS account.>

If C<IsTruncated> is C<false>, this response includes the last traffic
policy instance that is associated with the current account.

=item *

B<MaxItems>

The value that you specified for the C<MaxItems> parameter in the
request that produced the current response.

=item *

B<TrafficPolicyInstanceNameMarker> and
B<TrafficPolicyInstanceTypeMarker>

If C<IsTruncated> is C<true>, these two values in the response
represent the first traffic policy instance in the next group of
C<MaxItems> traffic policy instances. To list more traffic policy
instances, make another call to
C<ListTrafficPolicyInstancesByHostedZone>, and specify these values in
the corresponding request parameters.

If C<IsTruncated> is C<false>, all three elements are omitted from the
response.

=back



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

Send a C<GET> request to the C</I<Route 53 API
version>/trafficpolicyinstance> resource and include the ID and version
of the traffic policy.

Amazon Route 53 returns a maximum of 100 items in each response. If you
have a lot of traffic policy instances, you can use the C<MaxItems>
parameter to list them in groups of up to 100.

The response includes five values that help you navigate from one group
of C<MaxItems> traffic policy instances to the next:

=over

=item *

B<IsTruncated>

If the value of C<IsTruncated> in the response is C<true>, there are
more traffic policy instances associated with the specified traffic
policy.

If C<IsTruncated> is C<false>, this response includes the last traffic
policy instance that is associated with the specified traffic policy.

=item *

B<MaxItems>

The value that you specified for the C<MaxItems> parameter in the
request that produced the current response.

=item *

B<HostedZoneIdMarker>, B<TrafficPolicyInstanceNameMarker>, and
B<TrafficPolicyInstanceTypeMarker>

If C<IsTruncated> is C<true>, these values in the response represent
the first traffic policy instance in the next group of C<MaxItems>
traffic policy instances. To list more traffic policy instances, make
another call to C<ListTrafficPolicyInstancesByPolicy>, and specify
these values in the corresponding request parameters.

If C<IsTruncated> is C<false>, all three elements are omitted from the
response.

=back



=head2 ListTrafficPolicyVersions(Id => Str, [MaxItems => Str, TrafficPolicyVersionMarker => Str])

Each argument is described in detail in: L<Paws::Route53::ListTrafficPolicyVersions>

Returns: a L<Paws::Route53::ListTrafficPolicyVersionsResponse> instance

  Gets information about all of the versions for a specified traffic
policy.

Send a C<GET> request to the C</I<Amazon Route 53 API
version>/trafficpolicy> resource and specify the ID of the traffic
policy for which you want to list versions.

Amazon Route 53 returns a maximum of 100 items in each response. If you
have a lot of traffic policies, you can use the C<maxitems> parameter
to list them in groups of up to 100.

The response includes three values that help you navigate from one
group of C<maxitems>maxitems traffic policies to the next:

=over

=item *

B<IsTruncated>

If the value of C<IsTruncated> in the response is C<true>, there are
more traffic policy versions associated with the specified traffic
policy.

If C<IsTruncated> is C<false>, this response includes the last traffic
policy version that is associated with the specified traffic policy.

=item *

B<TrafficPolicyVersionMarker>

The ID of the next traffic policy version that is associated with the
current AWS account. If you want to list more traffic policies, make
another call to C<ListTrafficPolicyVersions>, and specify the value of
the C<TrafficPolicyVersionMarker> element in the
C<TrafficPolicyVersionMarker> request parameter.

If C<IsTruncated> is C<false>, Amazon Route 53 omits the
C<TrafficPolicyVersionMarker> element from the response.

=item *

B<MaxItems>

The value that you specified for the C<MaxItems> parameter in the
request that produced the current response.

=back



=head2 TestDNSAnswer(HostedZoneId => Str, RecordName => Str, RecordType => Str, [EDNS0ClientSubnetIP => Str, EDNS0ClientSubnetMask => Str, ResolverIP => Str])

Each argument is described in detail in: L<Paws::Route53::TestDNSAnswer>

Returns: a L<Paws::Route53::TestDNSAnswerResponse> instance

  


=head2 UpdateHealthCheck(HealthCheckId => Str, [AlarmIdentifier => L<Paws::Route53::AlarmIdentifier>, ChildHealthChecks => ArrayRef[Str], EnableSNI => Bool, FailureThreshold => Int, FullyQualifiedDomainName => Str, HealthCheckVersion => Int, HealthThreshold => Int, InsufficientDataHealthStatus => Str, Inverted => Bool, IPAddress => Str, Port => Int, Regions => ArrayRef[Str], ResourcePath => Str, SearchString => Str])

Each argument is described in detail in: L<Paws::Route53::UpdateHealthCheck>

Returns: a L<Paws::Route53::UpdateHealthCheckResponse> instance

  Updates an existing health check.

Send a C<POST> request to the C</I<Amazon Route 53 API
version>/healthcheck/I<health check ID> > resource. The request body
must include an XML document with an C<UpdateHealthCheckRequest>
element. For more information about updating health checks, see
Creating, Updating, and Deleting Health Checks in the Amazon Route 53
Developer Guide.


=head2 UpdateHostedZoneComment(Id => Str, [Comment => Str])

Each argument is described in detail in: L<Paws::Route53::UpdateHostedZoneComment>

Returns: a L<Paws::Route53::UpdateHostedZoneCommentResponse> instance

  Updates the hosted zone comment. Send a C<POST> request to the
C</2013-04-01/hostedzone/I<hosted zone ID> > resource.


=head2 UpdateTrafficPolicyComment(Comment => Str, Id => Str, Version => Int)

Each argument is described in detail in: L<Paws::Route53::UpdateTrafficPolicyComment>

Returns: a L<Paws::Route53::UpdateTrafficPolicyCommentResponse> instance

  Updates the comment for a specified traffic policy version.

Send a C<POST> request to the C</I<Amazon Route 53 API
version>/trafficpolicy/> resource.

The request body must include a document with an
C<UpdateTrafficPolicyCommentRequest> element.


=head2 UpdateTrafficPolicyInstance(Id => Str, TrafficPolicyId => Str, TrafficPolicyVersion => Int, TTL => Int)

Each argument is described in detail in: L<Paws::Route53::UpdateTrafficPolicyInstance>

Returns: a L<Paws::Route53::UpdateTrafficPolicyInstanceResponse> instance

  Updates the resource record sets in a specified hosted zone that were
created based on the settings in a specified traffic policy version.

Send a C<POST> request to the C</I<Amazon Route 53 API
version>/trafficpolicyinstance/I<traffic policy ID> > resource. The
request body must include a document with an
C<UpdateTrafficPolicyInstanceRequest> element.

When you update a traffic policy instance, Amazon Route 53 continues to
respond to DNS queries for the root resource record set name (such as
example.com) while it replaces one group of resource record sets with
another. Amazon Route 53 performs the following operations:

=over

=item 1.

Amazon Route 53 creates a new group of resource record sets based on
the specified traffic policy. This is true regardless of how
substantial the differences are between the existing resource record
sets and the new resource record sets.

=item 2.

When all of the new resource record sets have been created, Amazon
Route 53 starts to respond to DNS queries for the root resource record
set name (such as example.com) by using the new resource record sets.

=item 3.

Amazon Route 53 deletes the old group of resource record sets that are
associated with the root resource record set name.

=back



=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

