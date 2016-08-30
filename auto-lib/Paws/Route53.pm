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

    my $result = $self->ListHealthChecks(@_);
    my $params = {};
    
    $params->{ HealthChecks } = $result->HealthChecks;
    

    
    while ($result->IsTruncated) {
      $result = $self->ListHealthChecks(@_, Marker => $result->NextMarker);
      
      push @{ $params->{ HealthChecks } }, @{ $result->HealthChecks };
      
    }
    

    return $self->new_with_coercions(Paws::Route53::ListHealthChecks->_returns, %$params);
  }
  sub ListAllHostedZones {
    my $self = shift;

    my $result = $self->ListHostedZones(@_);
    my $params = {};
    
    $params->{ HostedZones } = $result->HostedZones;
    

    
    while ($result->IsTruncated) {
      $result = $self->ListHostedZones(@_, Marker => $result->NextMarker);
      
      push @{ $params->{ HostedZones } }, @{ $result->HostedZones };
      
    }
    

    return $self->new_with_coercions(Paws::Route53::ListHostedZones->_returns, %$params);
  }
  sub ListAllResourceRecordSets {
    my $self = shift;

    my $result = $self->ListResourceRecordSets(@_);
    my $params = {};
    
    $params->{ ResourceRecordSets } = $result->ResourceRecordSets;
    

    
    while ($result->IsTruncated) {
      $result = $self->ListResourceRecordSets(@_, StartRecordName => $result->NextRecordName, StartRecordType => $result->NextRecordType, StartRecordIdentifier => $result->NextRecordIdentifier);
      
      push @{ $params->{ ResourceRecordSets } }, @{ $result->ResourceRecordSets };
      
    }
    

    return $self->new_with_coercions(Paws::Route53::ListResourceRecordSets->_returns, %$params);
  }


  sub operations { qw/AssociateVPCWithHostedZone ChangeResourceRecordSets ChangeTagsForResource CreateHealthCheck CreateHostedZone CreateReusableDelegationSet CreateTrafficPolicy CreateTrafficPolicyInstance CreateTrafficPolicyVersion DeleteHealthCheck DeleteHostedZone DeleteReusableDelegationSet DeleteTrafficPolicy DeleteTrafficPolicyInstance DisassociateVPCFromHostedZone GetChange GetChangeDetails GetCheckerIpRanges GetGeoLocation GetHealthCheck GetHealthCheckCount GetHealthCheckLastFailureReason GetHealthCheckStatus GetHostedZone GetHostedZoneCount GetReusableDelegationSet GetTrafficPolicy GetTrafficPolicyInstance GetTrafficPolicyInstanceCount ListChangeBatchesByHostedZone ListChangeBatchesByRRSet ListGeoLocations ListHealthChecks ListHostedZones ListHostedZonesByName ListResourceRecordSets ListReusableDelegationSets ListTagsForResource ListTagsForResources ListTrafficPolicies ListTrafficPolicyInstances ListTrafficPolicyInstancesByHostedZone ListTrafficPolicyInstancesByPolicy ListTrafficPolicyVersions UpdateHealthCheck UpdateHostedZoneComment UpdateTrafficPolicyComment UpdateTrafficPolicyInstance / }

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

  This action associates a VPC with an hosted zone.

To associate a VPC with an hosted zone, send a C<POST> request to the
C</I<Route 53 API version>/hostedzone/I<hosted zone ID>/associatevpc>
resource. The request body must include a document with a
C<AssociateVPCWithHostedZoneRequest> element. The response returns the
C<AssociateVPCWithHostedZoneResponse> element that contains
C<ChangeInfo> for you to track the progress of the
C<AssociateVPCWithHostedZoneRequest> you made. See C<GetChange>
operation for how to track the progress of your change.


=head2 ChangeResourceRecordSets(ChangeBatch => L<Paws::Route53::ChangeBatch>, HostedZoneId => Str)

Each argument is described in detail in: L<Paws::Route53::ChangeResourceRecordSets>

Returns: a L<Paws::Route53::ChangeResourceRecordSetsResponse> instance

  Use this action to create or change your authoritative DNS information.
To use this action, send a C<POST> request to the C</I<Route 53 API
version>/hostedzone/I<hosted Zone ID>/rrset> resource. The request body
must include a document with a C<ChangeResourceRecordSetsRequest>
element.

Changes are a list of change items and are considered transactional.
For more information on transactional changes, also known as change
batches, see POST ChangeResourceRecordSets in the I<Amazon Route 53 API
Reference>.

Due to the nature of transactional changes, you cannot delete the same
resource record set more than once in a single change batch. If you
attempt to delete the same change batch more than once, Amazon Route 53
returns an C<InvalidChangeBatch> error.

In response to a C<ChangeResourceRecordSets> request, your DNS data is
changed on all Amazon Route 53 DNS servers. Initially, the status of a
change is C<PENDING>. This means the change has not yet propagated to
all the authoritative Amazon Route 53 DNS servers. When the change is
propagated to all hosts, the change returns a status of C<INSYNC>.

Note the following limitations on a C<ChangeResourceRecordSets>
request:

=over

=item * A request cannot contain more than 100 Change elements.

=item * A request cannot contain more than 1000 ResourceRecord
elements.

=item * The sum of the number of characters (including spaces) in all
C<Value> elements in a request cannot exceed 32,000 characters.

=back



=head2 ChangeTagsForResource(ResourceId => Str, ResourceType => Str, [AddTags => ArrayRef[L<Paws::Route53::Tag>], RemoveTagKeys => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::Route53::ChangeTagsForResource>

Returns: a L<Paws::Route53::ChangeTagsForResourceResponse> instance

  


=head2 CreateHealthCheck(CallerReference => Str, HealthCheckConfig => L<Paws::Route53::HealthCheckConfig>)

Each argument is described in detail in: L<Paws::Route53::CreateHealthCheck>

Returns: a L<Paws::Route53::CreateHealthCheckResponse> instance

  This action creates a new health check.

To create a new health check, send a C<POST> request to the C</I<Route
53 API version>/healthcheck> resource. The request body must include a
document with a C<CreateHealthCheckRequest> element. The response
returns the C<CreateHealthCheckResponse> element that contains metadata
about the health check.


=head2 CreateHostedZone(CallerReference => Str, Name => Str, [DelegationSetId => Str, HostedZoneConfig => L<Paws::Route53::HostedZoneConfig>, VPC => L<Paws::Route53::VPC>])

Each argument is described in detail in: L<Paws::Route53::CreateHostedZone>

Returns: a L<Paws::Route53::CreateHostedZoneResponse> instance

  This action creates a new hosted zone.

To create a new hosted zone, send a C<POST> request to the C</I<Route
53 API version>/hostedzone> resource. The request body must include a
document with a C<CreateHostedZoneRequest> element. The response
returns the C<CreateHostedZoneResponse> element that contains metadata
about the hosted zone.

Amazon Route 53 automatically creates a default SOA record and four NS
records for the zone. The NS records in the hosted zone are the name
servers you give your registrar to delegate your domain to. For more
information about SOA and NS records, see NS and SOA Records that
Amazon Route 53 Creates for a Hosted Zone in the I<Amazon Route 53
Developer Guide>.

When you create a zone, its initial status is C<PENDING>. This means
that it is not yet available on all DNS servers. The status of the zone
changes to C<INSYNC> when the NS and SOA records are available on all
Amazon Route 53 DNS servers.

When trying to create a hosted zone using a reusable delegation set,
you could specify an optional DelegationSetId, and Route53 would assign
those 4 NS records for the zone, instead of alloting a new one.


=head2 CreateReusableDelegationSet(CallerReference => Str, [HostedZoneId => Str])

Each argument is described in detail in: L<Paws::Route53::CreateReusableDelegationSet>

Returns: a L<Paws::Route53::CreateReusableDelegationSetResponse> instance

  This action creates a reusable delegationSet.

To create a new reusable delegationSet, send a C<POST> request to the
C</I<Route 53 API version>/delegationset> resource. The request body
must include a document with a C<CreateReusableDelegationSetRequest>
element. The response returns the
C<CreateReusableDelegationSetResponse> element that contains metadata
about the delegationSet.

If the optional parameter HostedZoneId is specified, it marks the
delegationSet associated with that particular hosted zone as reusable.


=head2 CreateTrafficPolicy(Document => Str, Name => Str, [Comment => Str])

Each argument is described in detail in: L<Paws::Route53::CreateTrafficPolicy>

Returns: a L<Paws::Route53::CreateTrafficPolicyResponse> instance

  Creates a traffic policy, which you use to create multiple DNS resource
record sets for one domain name (such as example.com) or one subdomain
name (such as www.example.com).

To create a traffic policy, send a C<POST> request to the C</I<Route 53
API version>/trafficpolicy> resource. The request body must include a
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

To create a traffic policy instance, send a C<POST> request to the
C</I<Route 53 API version>/trafficpolicyinstance> resource. The request
body must include a document with a C<CreateTrafficPolicyRequest>
element. The response returns the
C<CreateTrafficPolicyInstanceResponse> element, which contains
information about the traffic policy instance.


=head2 CreateTrafficPolicyVersion(Document => Str, Id => Str, [Comment => Str])

Each argument is described in detail in: L<Paws::Route53::CreateTrafficPolicyVersion>

Returns: a L<Paws::Route53::CreateTrafficPolicyVersionResponse> instance

  Creates a new version of an existing traffic policy. When you create a
new version of a traffic policy, you specify the ID of the traffic
policy that you want to update and a JSON-formatted document that
describes the new version.

You use traffic policies to create multiple DNS resource record sets
for one domain name (such as example.com) or one subdomain name (such
as www.example.com).

To create a new version, send a C<POST> request to the C</I<Route 53
API version>/trafficpolicy/> resource. The request body includes a
document with a C<CreateTrafficPolicyVersionRequest> element. The
response returns the C<CreateTrafficPolicyVersionResponse> element,
which contains information about the new version of the traffic policy.


=head2 DeleteHealthCheck(HealthCheckId => Str)

Each argument is described in detail in: L<Paws::Route53::DeleteHealthCheck>

Returns: a L<Paws::Route53::DeleteHealthCheckResponse> instance

  This action deletes a health check. To delete a health check, send a
C<DELETE> request to the C</I<Route 53 API
version>/healthcheck/I<health check ID>> resource.

You can delete a health check only if there are no resource record sets
associated with this health check. If resource record sets are
associated with this health check, you must disassociate them before
you can delete your health check. If you try to delete a health check
that is associated with resource record sets, Amazon Route 53 will deny
your request with a C<HealthCheckInUse> error. For information about
disassociating the records from your health check, see
C<ChangeResourceRecordSets>.


=head2 DeleteHostedZone(Id => Str)

Each argument is described in detail in: L<Paws::Route53::DeleteHostedZone>

Returns: a L<Paws::Route53::DeleteHostedZoneResponse> instance

  This action deletes a hosted zone. To delete a hosted zone, send a
C<DELETE> request to the C</I<Route 53 API version>/hostedzone/I<hosted
zone ID>> resource.

You can delete a hosted zone only if there are no resource record sets
other than the default SOA record and NS resource record sets. If your
hosted zone contains other resource record sets, you must delete them
before you can delete your hosted zone. If you try to delete a hosted
zone that contains other resource record sets, Amazon Route 53 will
deny your request with a C<HostedZoneNotEmpty> error. For information
about deleting records from your hosted zone, see
C<ChangeResourceRecordSets>.


=head2 DeleteReusableDelegationSet(Id => Str)

Each argument is described in detail in: L<Paws::Route53::DeleteReusableDelegationSet>

Returns: a L<Paws::Route53::DeleteReusableDelegationSetResponse> instance

  This action deletes a reusable delegation set. To delete a reusable
delegation set, send a C<DELETE> request to the C</I<Route 53 API
version>/delegationset/I<delegation set ID>> resource.

You can delete a reusable delegation set only if there are no
associated hosted zones. If your reusable delegation set contains
associated hosted zones, you must delete them before you can delete
your reusable delegation set. If you try to delete a reusable
delegation set that contains associated hosted zones, Amazon Route 53
will deny your request with a C<DelegationSetInUse> error.


=head2 DeleteTrafficPolicy(Id => Str, Version => Int)

Each argument is described in detail in: L<Paws::Route53::DeleteTrafficPolicy>

Returns: a L<Paws::Route53::DeleteTrafficPolicyResponse> instance

  Deletes a traffic policy. To delete a traffic policy, send a C<DELETE>
request to the C</I<Route 53 API version>/trafficpolicy> resource.


=head2 DeleteTrafficPolicyInstance(Id => Str)

Each argument is described in detail in: L<Paws::Route53::DeleteTrafficPolicyInstance>

Returns: a L<Paws::Route53::DeleteTrafficPolicyInstanceResponse> instance

  Deletes a traffic policy instance and all of the resource record sets
that Amazon Route 53 created when you created the instance.

To delete a traffic policy instance, send a C<DELETE> request to the
C</I<Route 53 API version>/trafficpolicy/I<traffic policy instance ID>>
resource.

When you delete a traffic policy instance, Amazon Route 53 also deletes
all of the resource record sets that were created when you created the
traffic policy instance.


=head2 DisassociateVPCFromHostedZone(HostedZoneId => Str, VPC => L<Paws::Route53::VPC>, [Comment => Str])

Each argument is described in detail in: L<Paws::Route53::DisassociateVPCFromHostedZone>

Returns: a L<Paws::Route53::DisassociateVPCFromHostedZoneResponse> instance

  This action disassociates a VPC from an hosted zone.

To disassociate a VPC to a hosted zone, send a C<POST> request to the
C</I<Route 53 API version>/hostedzone/I<hosted zone
ID>/disassociatevpc> resource. The request body must include a document
with a C<DisassociateVPCFromHostedZoneRequest> element. The response
returns the C<DisassociateVPCFromHostedZoneResponse> element that
contains C<ChangeInfo> for you to track the progress of the
C<DisassociateVPCFromHostedZoneRequest> you made. See C<GetChange>
operation for how to track the progress of your change.


=head2 GetChange(Id => Str)

Each argument is described in detail in: L<Paws::Route53::GetChange>

Returns: a L<Paws::Route53::GetChangeResponse> instance

  This action returns the current status of a change batch request. The
status is one of the following values:

- C<PENDING> indicates that the changes in this request have not
replicated to all Amazon Route 53 DNS servers. This is the initial
status of all change batch requests.

- C<INSYNC> indicates that the changes have replicated to all Amazon
Route 53 DNS servers.


=head2 GetChangeDetails(Id => Str)

Each argument is described in detail in: L<Paws::Route53::GetChangeDetails>

Returns: a L<Paws::Route53::GetChangeDetailsResponse> instance

  This action returns the status and changes of a change batch request.


=head2 GetCheckerIpRanges()

Each argument is described in detail in: L<Paws::Route53::GetCheckerIpRanges>

Returns: a L<Paws::Route53::GetCheckerIpRangesResponse> instance

  To retrieve a list of the IP ranges used by Amazon Route 53 health
checkers to check the health of your resources, send a C<GET> request
to the C</I<Route 53 API version>/checkeripranges> resource. You can
use these IP addresses to configure router and firewall rules to allow
health checkers to check the health of your resources.


=head2 GetGeoLocation([ContinentCode => Str, CountryCode => Str, SubdivisionCode => Str])

Each argument is described in detail in: L<Paws::Route53::GetGeoLocation>

Returns: a L<Paws::Route53::GetGeoLocationResponse> instance

  To retrieve a single geo location, send a C<GET> request to the
C</I<Route 53 API version>/geolocation> resource with one of these
options: continentcode | countrycode | countrycode and subdivisioncode.


=head2 GetHealthCheck(HealthCheckId => Str)

Each argument is described in detail in: L<Paws::Route53::GetHealthCheck>

Returns: a L<Paws::Route53::GetHealthCheckResponse> instance

  To retrieve the health check, send a C<GET> request to the C</I<Route
53 API version>/healthcheck/I<health check ID>> resource.


=head2 GetHealthCheckCount()

Each argument is described in detail in: L<Paws::Route53::GetHealthCheckCount>

Returns: a L<Paws::Route53::GetHealthCheckCountResponse> instance

  To retrieve a count of all your health checks, send a C<GET> request to
the C</I<Route 53 API version>/healthcheckcount> resource.


=head2 GetHealthCheckLastFailureReason(HealthCheckId => Str)

Each argument is described in detail in: L<Paws::Route53::GetHealthCheckLastFailureReason>

Returns: a L<Paws::Route53::GetHealthCheckLastFailureReasonResponse> instance

  If you want to learn why a health check is currently failing or why it
failed most recently (if at all), you can get the failure reason for
the most recent failure. Send a C<GET> request to the C</I<Route 53 API
version>/healthcheck/I<health check ID>/lastfailurereason> resource.


=head2 GetHealthCheckStatus(HealthCheckId => Str)

Each argument is described in detail in: L<Paws::Route53::GetHealthCheckStatus>

Returns: a L<Paws::Route53::GetHealthCheckStatusResponse> instance

  To retrieve the health check status, send a C<GET> request to the
C</I<Route 53 API version>/healthcheck/I<health check ID>/status>
resource. You can use this call to get a health check's current status.


=head2 GetHostedZone(Id => Str)

Each argument is described in detail in: L<Paws::Route53::GetHostedZone>

Returns: a L<Paws::Route53::GetHostedZoneResponse> instance

  To retrieve the delegation set for a hosted zone, send a C<GET> request
to the C</I<Route 53 API version>/hostedzone/I<hosted zone ID>>
resource. The delegation set is the four Amazon Route 53 name servers
that were assigned to the hosted zone when you created it.


=head2 GetHostedZoneCount()

Each argument is described in detail in: L<Paws::Route53::GetHostedZoneCount>

Returns: a L<Paws::Route53::GetHostedZoneCountResponse> instance

  To retrieve a count of all your hosted zones, send a C<GET> request to
the C</I<Route 53 API version>/hostedzonecount> resource.


=head2 GetReusableDelegationSet(Id => Str)

Each argument is described in detail in: L<Paws::Route53::GetReusableDelegationSet>

Returns: a L<Paws::Route53::GetReusableDelegationSetResponse> instance

  To retrieve the reusable delegation set, send a C<GET> request to the
C</I<Route 53 API version>/delegationset/I<delegation set ID>>
resource.


=head2 GetTrafficPolicy(Id => Str, Version => Int)

Each argument is described in detail in: L<Paws::Route53::GetTrafficPolicy>

Returns: a L<Paws::Route53::GetTrafficPolicyResponse> instance

  Gets information about a specific traffic policy version. To get the
information, send a C<GET> request to the C</I<Route 53 API
version>/trafficpolicy> resource.


=head2 GetTrafficPolicyInstance(Id => Str)

Each argument is described in detail in: L<Paws::Route53::GetTrafficPolicyInstance>

Returns: a L<Paws::Route53::GetTrafficPolicyInstanceResponse> instance

  Gets information about a specified traffic policy instance.

To get information about the traffic policy instance, send a C<GET>
request to the C</I<Route 53 API version>/trafficpolicyinstance>
resource.

After you submit a C<CreateTrafficPolicyInstance> or an
C<UpdateTrafficPolicyInstance> request, there's a brief delay while
Amazon Route 53 creates the resource record sets that are specified in
the traffic policy definition. For more information, see the C<State>
response element.


=head2 GetTrafficPolicyInstanceCount()

Each argument is described in detail in: L<Paws::Route53::GetTrafficPolicyInstanceCount>

Returns: a L<Paws::Route53::GetTrafficPolicyInstanceCountResponse> instance

  Gets the number of traffic policy instances that are associated with
the current AWS account.

To get the number of traffic policy instances, send a C<GET> request to
the C</I<Route 53 API version>/trafficpolicyinstancecount> resource.


=head2 ListChangeBatchesByHostedZone(EndDate => Str, HostedZoneId => Str, StartDate => Str, [Marker => Str, MaxItems => Str])

Each argument is described in detail in: L<Paws::Route53::ListChangeBatchesByHostedZone>

Returns: a L<Paws::Route53::ListChangeBatchesByHostedZoneResponse> instance

  This action gets the list of ChangeBatches in a given time period for a
given hosted zone.


=head2 ListChangeBatchesByRRSet(EndDate => Str, HostedZoneId => Str, Name => Str, StartDate => Str, Type => Str, [Marker => Str, MaxItems => Str, SetIdentifier => Str])

Each argument is described in detail in: L<Paws::Route53::ListChangeBatchesByRRSet>

Returns: a L<Paws::Route53::ListChangeBatchesByRRSetResponse> instance

  This action gets the list of ChangeBatches in a given time period for a
given hosted zone and RRSet.


=head2 ListGeoLocations([MaxItems => Str, StartContinentCode => Str, StartCountryCode => Str, StartSubdivisionCode => Str])

Each argument is described in detail in: L<Paws::Route53::ListGeoLocations>

Returns: a L<Paws::Route53::ListGeoLocationsResponse> instance

  To retrieve a list of supported geo locations, send a C<GET> request to
the C</I<Route 53 API version>/geolocations> resource. The response to
this request includes a C<GeoLocationDetailsList> element with zero,
one, or multiple C<GeoLocationDetails> child elements. The list is
sorted by country code, and then subdivision code, followed by
continents at the end of the list.

By default, the list of geo locations is displayed on a single page.
You can control the length of the page that is displayed by using the
C<MaxItems> parameter. If the list is truncated, C<IsTruncated> will be
set to I<true> and a combination of C<NextContinentCode,
NextCountryCode, NextSubdivisionCode> will be populated. You can pass
these as parameters to C<StartContinentCode, StartCountryCode,
StartSubdivisionCode> to control the geo location that the list begins
with.


=head2 ListHealthChecks([Marker => Str, MaxItems => Str])

Each argument is described in detail in: L<Paws::Route53::ListHealthChecks>

Returns: a L<Paws::Route53::ListHealthChecksResponse> instance

  To retrieve a list of your health checks, send a C<GET> request to the
C</I<Route 53 API version>/healthcheck> resource. The response to this
request includes a C<HealthChecks> element with zero, one, or multiple
C<HealthCheck> child elements. By default, the list of health checks is
displayed on a single page. You can control the length of the page that
is displayed by using the C<MaxItems> parameter. You can use the
C<Marker> parameter to control the health check that the list begins
with.

Amazon Route 53 returns a maximum of 100 items. If you set MaxItems to
a value greater than 100, Amazon Route 53 returns only the first 100.


=head2 ListHostedZones([DelegationSetId => Str, Marker => Str, MaxItems => Str])

Each argument is described in detail in: L<Paws::Route53::ListHostedZones>

Returns: a L<Paws::Route53::ListHostedZonesResponse> instance

  To retrieve a list of your hosted zones, send a C<GET> request to the
C</I<Route 53 API version>/hostedzone> resource. The response to this
request includes a C<HostedZones> element with zero, one, or multiple
C<HostedZone> child elements. By default, the list of hosted zones is
displayed on a single page. You can control the length of the page that
is displayed by using the C<MaxItems> parameter. You can use the
C<Marker> parameter to control the hosted zone that the list begins
with.

Amazon Route 53 returns a maximum of 100 items. If you set MaxItems to
a value greater than 100, Amazon Route 53 returns only the first 100.


=head2 ListHostedZonesByName([DNSName => Str, HostedZoneId => Str, MaxItems => Str])

Each argument is described in detail in: L<Paws::Route53::ListHostedZonesByName>

Returns: a L<Paws::Route53::ListHostedZonesByNameResponse> instance

  To retrieve a list of your hosted zones in lexicographic order, send a
C<GET> request to the C</I<Route 53 API version>/hostedzonesbyname>
resource. The response to this request includes a C<HostedZones>
element with zero or more C<HostedZone> child elements
lexicographically ordered by DNS name. By default, the list of hosted
zones is displayed on a single page. You can control the length of the
page that is displayed by using the C<MaxItems> parameter. You can use
the C<DNSName> and C<HostedZoneId> parameters to control the hosted
zone that the list begins with.

Amazon Route 53 returns a maximum of 100 items. If you set MaxItems to
a value greater than 100, Amazon Route 53 returns only the first 100.


=head2 ListResourceRecordSets(HostedZoneId => Str, [MaxItems => Str, StartRecordIdentifier => Str, StartRecordName => Str, StartRecordType => Str])

Each argument is described in detail in: L<Paws::Route53::ListResourceRecordSets>

Returns: a L<Paws::Route53::ListResourceRecordSetsResponse> instance

  List the resource record sets in a specified hosted zone. Send a GET
request to the C<2013-04-01/hostedzone/I<hosted zone ID>/rrset>
resource.

C<ListResourceRecordSets> returns up to 100 resource record sets at a
time in ASCII order, beginning at a position specified by the name and
type elements. The action sorts results first by DNS name with the
labels reversed, for example:

C<com.example.www.>

Note the trailing dot, which can change the sort order in some
circumstances. When multiple records have the same DNS name, the action
sorts results by the record type.

You can use the name and type elements to adjust the beginning position
of the list of resource record sets returned:

=over

=item * B<If you do not specify C<Name> or C<Type>>: The results begin
with the first resource record set that the hosted zone contains.

=item * B<If you specify C<Name> but not C<Type>>: The results begin
with the first resource record set in the list whose name is greater
than or equal to Name.

=item * B<If you specify C<Type> but not C<Name>>: Amazon Route 53
returns the C<InvalidInput> error.

=item * B<If you specify both C<Name> and C<Type>>: The results begin
with the first resource record set in the list whose name is greater
than or equal to C<Name>, and whose type is greater than or equal to
C<Type>.

=back

This action returns the most current version of the records. This
includes records that are C<PENDING>, and that are not yet available on
all Amazon Route 53 DNS servers.

To ensure that you get an accurate listing of the resource record sets
for a hosted zone at a point in time, do not submit a
C<ChangeResourceRecordSets> request while you are paging through the
results of a C<ListResourceRecordSets> request. If you do, some pages
may display results without the latest changes while other pages
display results with the latest changes.


=head2 ListReusableDelegationSets([Marker => Str, MaxItems => Str])

Each argument is described in detail in: L<Paws::Route53::ListReusableDelegationSets>

Returns: a L<Paws::Route53::ListReusableDelegationSetsResponse> instance

  To retrieve a list of your reusable delegation sets, send a C<GET>
request to the C</I<Route 53 API version>/delegationset> resource. The
response to this request includes a C<DelegationSets> element with
zero, one, or multiple C<DelegationSet> child elements. By default, the
list of delegation sets is displayed on a single page. You can control
the length of the page that is displayed by using the C<MaxItems>
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
is associated with the current AWS account. To get the information,
send a C<GET> request to the C</I<Route 53 API version>/trafficpolicy>
resource.

Amazon Route 53 returns a maximum of 100 items in each response. If you
have a lot of traffic policies, you can use the C<maxitems> parameter
to list them in groups of up to 100.

The response includes three values that help you navigate from one
group of C<maxitems> traffic policies to the next:

=over

=item * B<IsTruncated>

If the value of C<IsTruncated> in the response is C<true>, there are
more traffic policies associated with the current AWS account.

If C<IsTruncated> is C<false>, this response includes the last traffic
policy that is associated with the current account.

=item * B<TrafficPolicyIdMarker>

If C<IsTruncated> is C<true>, C<TrafficPolicyIdMarker> is the ID of the
first traffic policy in the next group of C<MaxItems> traffic policies.
If you want to list more traffic policies, make another call to
C<ListTrafficPolicies>, and specify the value of the
C<TrafficPolicyIdMarker> element from the response in the
C<TrafficPolicyIdMarker> request parameter.

If C<IsTruncated> is C<false>, the C<TrafficPolicyIdMarker> element is
omitted from the response.

=item * B<MaxItems>

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

To get information about the traffic policy instances that are
associated with the current AWS account, send a C<GET> request to the
C</I<Route 53 API version>/trafficpolicyinstance> resource.

Amazon Route 53 returns a maximum of 100 items in each response. If you
have a lot of traffic policy instances, you can use the C<MaxItems>
parameter to list them in groups of up to 100.

The response includes five values that help you navigate from one group
of C<MaxItems> traffic policy instances to the next:

=over

=item * B<IsTruncated>

If the value of C<IsTruncated> in the response is C<true>, there are
more traffic policy instances associated with the current AWS account.

If C<IsTruncated> is C<false>, this response includes the last traffic
policy instance that is associated with the current account.

=item * B<MaxItems>

The value that you specified for the C<MaxItems> parameter in the
request that produced the current response.

=item * B<HostedZoneIdMarker>, B<TrafficPolicyInstanceNameMarker>, and
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

To get information about the traffic policy instances that you created
in a specified hosted zone, send a C<GET> request to the C</I<Route 53
API version>/trafficpolicyinstance> resource and include the ID of the
hosted zone.

Amazon Route 53 returns a maximum of 100 items in each response. If you
have a lot of traffic policy instances, you can use the C<MaxItems>
parameter to list them in groups of up to 100.

The response includes four values that help you navigate from one group
of C<MaxItems> traffic policy instances to the next:

=over

=item * B<IsTruncated>

If the value of C<IsTruncated in the response is C<true>, there are
more traffic policy instances associated with the current AWS account.>

If C<IsTruncated> is C<false>, this response includes the last traffic
policy instance that is associated with the current account.

=item * B<MaxItems>

The value that you specified for the C<MaxItems> parameter in the
request that produced the current response.

=item * B<TrafficPolicyInstanceNameMarker> and
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

To get information about the traffic policy instances that you created
by using a specify traffic policy version, send a C<GET> request to the
C</I<Route 53 API version>/trafficpolicyinstance> resource and include
the ID and version of the traffic policy.

Amazon Route 53 returns a maximum of 100 items in each response. If you
have a lot of traffic policy instances, you can use the C<MaxItems>
parameter to list them in groups of up to 100.

The response includes five values that help you navigate from one group
of C<MaxItems> traffic policy instances to the next:

=over

=item * B<IsTruncated>

If the value of C<IsTruncated> in the response is C<true>, there are
more traffic policy instances associated with the specified traffic
policy.

If C<IsTruncated> is C<false>, this response includes the last traffic
policy instance that is associated with the specified traffic policy.

=item * B<MaxItems>

The value that you specified for the C<MaxItems> parameter in the
request that produced the current response.

=item * B<HostedZoneIdMarker>, B<TrafficPolicyInstanceNameMarker>, and
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
policy. C<ListTrafficPolicyVersions> lists only versions that have not
been deleted.

Amazon Route 53 returns a maximum of 100 items in each response. If you
have a lot of traffic policies, you can use the C<maxitems> parameter
to list them in groups of up to 100.

The response includes three values that help you navigate from one
group of C<maxitems>maxitems traffic policies to the next:

=over

=item * B<IsTruncated>

If the value of C<IsTruncated> in the response is C<true>, there are
more traffic policy versions associated with the specified traffic
policy.

If C<IsTruncated> is C<false>, this response includes the last traffic
policy version that is associated with the specified traffic policy.

=item * B<TrafficPolicyVersionMarker>

The ID of the next traffic policy version that is associated with the
current AWS account. If you want to list more traffic policies, make
another call to C<ListTrafficPolicyVersions>, and specify the value of
the C<TrafficPolicyVersionMarker> element in the
C<TrafficPolicyVersionMarker> request parameter.

If C<IsTruncated> is C<false>, Amazon Route 53 omits the
C<TrafficPolicyVersionMarker> element from the response.

=item * B<MaxItems>

The value that you specified for the C<MaxItems> parameter in the
request that produced the current response.

=back



=head2 UpdateHealthCheck(HealthCheckId => Str, [AlarmIdentifier => L<Paws::Route53::AlarmIdentifier>, ChildHealthChecks => ArrayRef[Str], EnableSNI => Bool, FailureThreshold => Int, FullyQualifiedDomainName => Str, HealthCheckVersion => Int, HealthThreshold => Int, InsufficientDataHealthStatus => Str, Inverted => Bool, IPAddress => Str, Port => Int, Regions => ArrayRef[Str], ResourcePath => Str, SearchString => Str])

Each argument is described in detail in: L<Paws::Route53::UpdateHealthCheck>

Returns: a L<Paws::Route53::UpdateHealthCheckResponse> instance

  This action updates an existing health check.

To update a health check, send a C<POST> request to the C</I<Route 53
API version>/healthcheck/I<health check ID>> resource. The request body
must include a document with an C<UpdateHealthCheckRequest> element.
The response returns an C<UpdateHealthCheckResponse> element, which
contains metadata about the health check.


=head2 UpdateHostedZoneComment(Id => Str, [Comment => Str])

Each argument is described in detail in: L<Paws::Route53::UpdateHostedZoneComment>

Returns: a L<Paws::Route53::UpdateHostedZoneCommentResponse> instance

  To update the hosted zone comment, send a C<POST> request to the
C</I<Route 53 API version>/hostedzone/I<hosted zone ID>> resource. The
request body must include a document with a
C<UpdateHostedZoneCommentRequest> element. The response to this request
includes the modified C<HostedZone> element.

The comment can have a maximum length of 256 characters.


=head2 UpdateTrafficPolicyComment(Comment => Str, Id => Str, Version => Int)

Each argument is described in detail in: L<Paws::Route53::UpdateTrafficPolicyComment>

Returns: a L<Paws::Route53::UpdateTrafficPolicyCommentResponse> instance

  Updates the comment for a specified traffic policy version.

To update the comment, send a C<POST> request to the C</I<Route 53 API
version>/trafficpolicy/> resource.

The request body must include a document with an
C<UpdateTrafficPolicyCommentRequest> element.


=head2 UpdateTrafficPolicyInstance(Id => Str, TrafficPolicyId => Str, TrafficPolicyVersion => Int, TTL => Int)

Each argument is described in detail in: L<Paws::Route53::UpdateTrafficPolicyInstance>

Returns: a L<Paws::Route53::UpdateTrafficPolicyInstanceResponse> instance

  Updates the resource record sets in a specified hosted zone that were
created based on the settings in a specified traffic policy version.

The DNS type of the resource record sets that you're updating must
match the DNS type in the JSON document that is associated with the
traffic policy version that you're using to update the traffic policy
instance.

When you update a traffic policy instance, Amazon Route 53 continues to
respond to DNS queries for the root resource record set name (such as
example.com) while it replaces one group of resource record sets with
another. Amazon Route 53 performs the following operations:

=over

=item 1. Amazon Route 53 creates a new group of resource record sets
based on the specified traffic policy. This is true regardless of how
substantial the differences are between the existing resource record
sets and the new resource record sets.

=item 2. When all of the new resource record sets have been created,
Amazon Route 53 starts to respond to DNS queries for the root resource
record set name (such as example.com) by using the new resource record
sets.

=item 3. Amazon Route 53 deletes the old group of resource record sets
that are associated with the root resource record set name.

=back

To update a traffic policy instance, send a C<POST> request to the
C</I<Route 53 API version>/trafficpolicyinstance/I<traffic policy ID>>
resource. The request body must include a document with an
C<UpdateTrafficPolicyInstanceRequest> element.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

