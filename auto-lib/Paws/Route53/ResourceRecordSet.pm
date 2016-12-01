package Paws::Route53::ResourceRecordSet;
  use Moose;
  has AliasTarget => (is => 'ro', isa => 'Paws::Route53::AliasTarget');
  has Failover => (is => 'ro', isa => 'Str');
  has GeoLocation => (is => 'ro', isa => 'Paws::Route53::GeoLocation');
  has HealthCheckId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Region => (is => 'ro', isa => 'Str');
  has ResourceRecords => (is => 'ro', isa => 'ArrayRef[Paws::Route53::ResourceRecord]', request_name => 'ResourceRecord', traits => ['NameInRequest']);
  has SetIdentifier => (is => 'ro', isa => 'Str');
  has TrafficPolicyInstanceId => (is => 'ro', isa => 'Str');
  has TTL => (is => 'ro', isa => 'Int');
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Weight => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ResourceRecordSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::ResourceRecordSet object:

  $service_obj->Method(Att1 => { AliasTarget => $value, ..., Weight => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::ResourceRecordSet object:

  $result = $service_obj->Method(...);
  $result->Att1->AliasTarget

=head1 DESCRIPTION

Information about the resource record set to create or delete.

=head1 ATTRIBUTES


=head2 AliasTarget => L<Paws::Route53::AliasTarget>

  I<Alias resource record sets only:> Information about the CloudFront
distribution, AWS Elastic Beanstalk environment, ELB load balancer,
Amazon S3 bucket, or Amazon Route 53 resource record set to which you
are redirecting queries. The AWS Elastic Beanstalk environment must
have a regionalized subdomain.

If you're creating resource records sets for a private hosted zone,
note the following:

=over

=item *

You can't create alias resource record sets for CloudFront
distributions in a private hosted zone.

=item *

Creating geolocation alias resource record sets or latency alias
resource record sets in a private hosted zone is unsupported.

=item *

For information about creating failover resource record sets in a
private hosted zone, see Configuring Failover in a Private Hosted Zone
in the I<Amazon Route 53 Developer Guide>.

=back



=head2 Failover => Str

  I<Failover resource record sets only:> To configure failover, you add
the C<Failover> element to two resource record sets. For one resource
record set, you specify C<PRIMARY> as the value for C<Failover>; for
the other resource record set, you specify C<SECONDARY>. In addition,
you include the C<HealthCheckId> element and specify the health check
that you want Amazon Route 53 to perform for each resource record set.

Except where noted, the following failover behaviors assume that you
have included the C<HealthCheckId> element in both resource record
sets:

=over

=item *

When the primary resource record set is healthy, Amazon Route 53
responds to DNS queries with the applicable value from the primary
resource record set regardless of the health of the secondary resource
record set.

=item *

When the primary resource record set is unhealthy and the secondary
resource record set is healthy, Amazon Route 53 responds to DNS queries
with the applicable value from the secondary resource record set.

=item *

When the secondary resource record set is unhealthy, Amazon Route 53
responds to DNS queries with the applicable value from the primary
resource record set regardless of the health of the primary resource
record set.

=item *

If you omit the C<HealthCheckId> element for the secondary resource
record set, and if the primary resource record set is unhealthy, Amazon
Route 53 always responds to DNS queries with the applicable value from
the secondary resource record set. This is true regardless of the
health of the associated endpoint.

=back

You can't create non-failover resource record sets that have the same
values for the C<Name> and C<Type> elements as failover resource record
sets.

For failover alias resource record sets, you must also include the
C<EvaluateTargetHealth> element and set the value to true.

For more information about configuring failover for Amazon Route 53,
see the following topics in the I<Amazon Route 53 Developer Guide>:

=over

=item *

Amazon Route 53 Health Checks and DNS Failover

=item *

Configuring Failover in a Private Hosted Zone

=back

Valid values: C<PRIMARY> | C<SECONDARY>


=head2 GeoLocation => L<Paws::Route53::GeoLocation>

  I<Geo location resource record sets only:> A complex type that lets you
control how Amazon Route 53 responds to DNS queries based on the
geographic origin of the query. For example, if you want all queries
from Africa to be routed to a web server with an IP address of
C<192.0.2.111>, create a resource record set with a C<Type> of C<A> and
a C<ContinentCode> of C<AF>.

Creating geolocation and geolocation alias resource record sets in
private hosted zones is not supported.

If you create separate resource record sets for overlapping geographic
regions (for example, one resource record set for a continent and one
for a country on the same continent), priority goes to the smallest
geographic region. This allows you to route most queries for a
continent to one resource and to route queries for a country on that
continent to a different resource.

You can't create two geolocation resource record sets that specify the
same geographic location.

The value C<*> in the C<CountryCode> element matches all geographic
locations that aren't specified in other geolocation resource record
sets that have the same values for the C<Name> and C<Type> elements.

Geolocation works by mapping IP addresses to locations. However, some
IP addresses aren't mapped to geographic locations, so even if you
create geolocation resource record sets that cover all seven
continents, Amazon Route 53 will receive some DNS queries from
locations that it can't identify. We recommend that you create a
resource record set for which the value of C<CountryCode> is C<*>,
which handles both queries that come from locations for which you
haven't created geolocation resource record sets and queries from IP
addresses that aren't mapped to a location. If you don't create a C<*>
resource record set, Amazon Route 53 returns a "no answer" response for
queries from those locations.

You can't create non-geolocation resource record sets that have the
same values for the C<Name> and C<Type> elements as geolocation
resource record sets.


=head2 HealthCheckId => Str

  If you want Amazon Route 53 to return this resource record set in
response to a DNS query only when a health check is passing, include
the C<HealthCheckId> element and specify the ID of the applicable
health check.

Amazon Route 53 determines whether a resource record set is healthy
based on one of the following:

=over

=item *

By periodically sending a request to the endpoint that is specified in
the health check

=item *

By aggregating the status of a specified group of health checks
(calculated health checks)

=item *

By determining the current state of a CloudWatch alarm (CloudWatch
metric health checks)

=back

For information about how Amazon Route 53 determines whether a health
check is healthy, see CreateHealthCheck.

The C<HealthCheckId> element is only useful when Amazon Route 53 is
choosing between two or more resource record sets to respond to a DNS
query, and you want Amazon Route 53 to base the choice in part on the
status of a health check. Configuring health checks only makes sense in
the following configurations:

=over

=item *

You're checking the health of the resource record sets in a weighted,
latency, geolocation, or failover resource record set, and you specify
health check IDs for all of the resource record sets. If the health
check for one resource record set specifies an endpoint that is not
healthy, Amazon Route 53 stops responding to queries using the value
for that resource record set.

=item *

You set C<EvaluateTargetHealth> to true for the resource record sets in
an alias, weighted alias, latency alias, geolocation alias, or failover
alias resource record set, and you specify health check IDs for all of
the resource record sets that are referenced by the alias resource
record sets.

=back

Amazon Route 53 doesn't check the health of the endpoint specified in
the resource record set, for example, the endpoint specified by the IP
address in the C<Value> element. When you add a C<HealthCheckId>
element to a resource record set, Amazon Route 53 checks the health of
the endpoint that you specified in the health check.

For geolocation resource record sets, if an endpoint is unhealthy,
Amazon Route 53 looks for a resource record set for the larger,
associated geographic region. For example, suppose you have resource
record sets for a state in the United States, for the United States,
for North America, and for all locations. If the endpoint for the state
resource record set is unhealthy, Amazon Route 53 checks the resource
record sets for the United States, for North America, and for all
locations (a resource record set for which the value of C<CountryCode>
is C<*>), in that order, until it finds a resource record set for which
the endpoint is healthy.

If your health checks specify the endpoint only by domain name, we
recommend that you create a separate health check for each endpoint.
For example, create a health check for each C<HTTP> server that is
serving content for C<www.example.com>. For the value of
C<FullyQualifiedDomainName>, specify the domain name of the server
(such as C<us-east-1-www.example.com>), not the name of the resource
record sets (example.com).

n this configuration, if you create a health check for which the value
of C<FullyQualifiedDomainName> matches the name of the resource record
sets and then associate the health check with those resource record
sets, health check results will be unpredictable.

For more information, see the following topics in the I<Amazon Route 53
Developer Guide>:

=over

=item *

Amazon Route 53 Health Checks and DNS Failover

=item *

Configuring Failover in a Private Hosted Zone

=back



=head2 B<REQUIRED> Name => Str

  The name of the domain you want to perform the action on.

Enter a fully qualified domain name, for example, C<www.example.com>.
You can optionally include a trailing dot. If you omit the trailing
dot, Amazon Route 53 still assumes that the domain name that you
specify is fully qualified. This means that Amazon Route 53 treats
C<www.example.com> (without a trailing dot) and C<www.example.com.>
(with a trailing dot) as identical.

For information about how to specify characters other than C<a-z>,
C<0-9>, and C<-> (hyphen) and how to specify internationalized domain
names, see DNS Domain Name Format in the I<Amazon Route 53 Developer
Guide>.

You can use the asterisk (*) wildcard to replace the leftmost label in
a domain name. For example, C<*.example.com>. Note the following:

=over

=item *

The * must replace the entire label. For example, you can't specify
C<*prod.example.com> or C<prod*.example.com>.

=item *

The * can't replace any of the middle labels, for example,
marketing.*.example.com.

=item *

If you include * in any position other than the leftmost label in a
domain name, DNS treats it as an * character (ASCII 42), not as a
wildcard.

You can't use the * wildcard for resource records sets that have a type
of NS.

=back

You can use the * wildcard as the leftmost label in a domain name, for
example, C<*.example.com>. You can't use an * for one of the middle
labels, for example, C<marketing.*.example.com>. In addition, the *
must replace the entire label; for example, you can't specify
C<prod*.example.com>.


=head2 Region => Str

  I<Latency-based resource record sets only:> The Amazon EC2 Region where
the resource that is specified in this resource record set resides. The
resource typically is an AWS resource, such as an EC2 instance or an
ELB load balancer, and is referred to by an IP address or a DNS domain
name, depending on the record type.

Creating latency and latency alias resource record sets in private
hosted zones is not supported.

When Amazon Route 53 receives a DNS query for a domain name and type
for which you have created latency resource record sets, Amazon Route
53 selects the latency resource record set that has the lowest latency
between the end user and the associated Amazon EC2 Region. Amazon Route
53 then returns the value that is associated with the selected resource
record set.

Note the following:

=over

=item *

You can only specify one C<ResourceRecord> per latency resource record
set.

=item *

You can only create one latency resource record set for each Amazon EC2
Region.

=item *

You are not required to create latency resource record sets for all
Amazon EC2 Regions. Amazon Route 53 will choose the region with the
best latency from among the regions for which you create latency
resource record sets.

=item *

You can't create non-latency resource record sets that have the same
values for the C<Name> and C<Type> elements as latency resource record
sets.

=back



=head2 ResourceRecords => ArrayRef[L<Paws::Route53::ResourceRecord>]

  Information about the resource records to act upon.

If you are creating an alias resource record set, omit
C<ResourceRecords>.


=head2 SetIdentifier => Str

  I<Weighted, Latency, Geo, and Failover resource record sets only:> An
identifier that differentiates among multiple resource record sets that
have the same combination of DNS name and type. The value of
C<SetIdentifier> must be unique for each resource record set that has
the same combination of DNS name and type. Omit C<SetIdentifier> for
any other types of record sets.


=head2 TrafficPolicyInstanceId => Str

  When you create a traffic policy instance, Amazon Route 53
automatically creates a resource record set. C<TrafficPolicyInstanceId>
is the ID of the traffic policy instance that Amazon Route 53 created
this resource record set for.

To delete the resource record set that is associated with a traffic
policy instance, use C<DeleteTrafficPolicyInstance>. Amazon Route 53
will delete the resource record set automatically. If you delete the
resource record set by using C<ChangeResourceRecordSets>, Amazon Route
53 doesn't automatically delete the traffic policy instance, and you'll
continue to be charged for it even though it's no longer in use.


=head2 TTL => Int

  The resource record cache time to live (TTL), in seconds. Note the
following:

=over

=item *

If you're creating an alias resource record set, omit C<TTL>. Amazon
Route 53 uses the value of C<TTL> for the alias target.

=item *

If you're associating this resource record set with a health check (if
you're adding a C<HealthCheckId> element), we recommend that you
specify a C<TTL> of 60 seconds or less so clients respond quickly to
changes in health status.

=item *

All of the resource record sets in a group of weighted, latency,
geolocation, or failover resource record sets must have the same value
for C<TTL>.

=item *

If a group of weighted resource record sets includes one or more
weighted alias resource record sets for which the alias target is an
ELB load balancer, we recommend that you specify a C<TTL> of 60 seconds
for all of the non-alias weighted resource record sets that have the
same name and type. Values other than 60 seconds (the TTL for load
balancers) will change the effect of the values that you specify for
C<Weight>.

=back



=head2 B<REQUIRED> Type => Str

  The DNS record type. For information about different record types and
how data is encoded for them, see Supported DNS Resource Record Types
in the I<Amazon Route 53 Developer Guide>.

Valid values for basic resource record sets: C<A> | C<AAAA> | C<CNAME>
| C<MX> | C<NAPTR> | C<NS> | C<PTR> | C<SOA> | C<SPF> | C<SRV> | C<TXT>

Values for weighted, latency, geolocation, and failover resource record
sets: C<A> | C<AAAA> | C<CNAME> | C<MX> | C<NAPTR> | C<PTR> | C<SPF> |
C<SRV> | C<TXT>. When creating a group of weighted, latency,
geolocation, or failover resource record sets, specify the same value
for all of the resource record sets in the group.

SPF records were formerly used to verify the identity of the sender of
email messages. However, we no longer recommend that you create
resource record sets for which the value of C<Type> is C<SPF>. RFC
7208, I<Sender Policy Framework (SPF) for Authorizing Use of Domains in
Email, Version 1>, has been updated to say, "...[I]ts existence and
mechanism defined in [RFC4408] have led to some interoperability
issues. Accordingly, its use is no longer appropriate for SPF version
1; implementations are not to use it." In RFC 7208, see section 14.1,
The SPF DNS Record Type.

Values for alias resource record sets:

=over

=item *

B<CloudFront distributions:> C<A>

If IPv6 is enabled for the distribution, create two resource record
sets to route traffic to your distribution, one with a value of C<A>
and one with a value of C<AAAA>.

=item *

B<AWS Elastic Beanstalk environment that has a regionalized subdomain>:
C<A>

=item *

B<ELB load balancers:> C<A> | C<AAAA>

=item *

B<Amazon S3 buckets:> C<A>

=item *

B<Another resource record set in this hosted zone:> Specify the type of
the resource record set for which you're creating the alias. Specify
any value except C<NS> or C<SOA>.

=back



=head2 Weight => Int

  I<Weighted resource record sets only:> Among resource record sets that
have the same combination of DNS name and type, a value that determines
the proportion of DNS queries that Amazon Route 53 responds to using
the current resource record set. Amazon Route 53 calculates the sum of
the weights for the resource record sets that have the same combination
of DNS name and type. Amazon Route 53 then responds to queries based on
the ratio of a resource's weight to the total. Note the following:

=over

=item *

You must specify a value for the C<Weight> element for every weighted
resource record set.

=item *

You can only specify one C<ResourceRecord> per weighted resource record
set.

=item *

You can't create latency, failover, or geolocation resource record sets
that have the same values for the C<Name> and C<Type> elements as
weighted resource record sets.

=item *

You can create a maximum of 100 weighted resource record sets that have
the same values for the C<Name> and C<Type> elements.

=item *

For weighted (but not weighted alias) resource record sets, if you set
C<Weight> to C<0> for a resource record set, Amazon Route 53 never
responds to queries with the applicable value for that resource record
set. However, if you set C<Weight> to C<0> for all resource record sets
that have the same combination of DNS name and type, traffic is routed
to all resources with equal probability.

The effect of setting C<Weight> to C<0> is different when you associate
health checks with weighted resource record sets. For more information,
see Options for Configuring Amazon Route 53 Active-Active and
Active-Passive Failover in the I<Amazon Route 53 Developer Guide>.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

