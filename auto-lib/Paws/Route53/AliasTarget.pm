package Paws::Route53::AliasTarget;
  use Moose;
  has DNSName => (is => 'ro', isa => 'Str', required => 1);
  has EvaluateTargetHealth => (is => 'ro', isa => 'Bool', required => 1);
  has HostedZoneId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::AliasTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::AliasTarget object:

  $service_obj->Method(Att1 => { DNSName => $value, ..., HostedZoneId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::AliasTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->DNSName

=head1 DESCRIPTION

I<Alias resource record sets only:> Information about the CloudFront
distribution, Elastic Beanstalk environment, ELB load balancer, Amazon
S3 bucket, or Amazon Route 53 resource record set that you're
redirecting queries to. The Elastic Beanstalk environment must have a
regionalized subdomain.

When creating resource record sets for a private hosted zone, note the
following:

=over

=item *

Resource record sets can't be created for CloudFront distributions in a
private hosted zone.

=item *

Creating geolocation alias resource record sets or latency alias
resource record sets in a private hosted zone is unsupported.

=item *

For information about creating failover resource record sets in a
private hosted zone, see Configuring Failover in a Private Hosted Zone.

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> DNSName => Str

  I<Alias resource record sets only:> The value that you specify depends
on where you want to route queries:

=over

=item *

B<A CloudFront distribution:> Specify the domain name that CloudFront
assigned when you created your distribution.

Your CloudFront distribution must include an alternate domain name that
matches the name of the resource record set. For example, if the name
of the resource record set is I<acme.example.com>, your CloudFront
distribution must include I<acme.example.com> as one of the alternate
domain names. For more information, see Using Alternate Domain Names
(CNAMEs) in the I<Amazon CloudFront Developer Guide>.

=item *

B<Elastic Beanstalk environment>: Specify the C<CNAME> attribute for
the environment. (The environment must have a regionalized domain
name.) You can use the following methods to get the value of the CNAME
attribute:

=over

=item *

I<AWS Management Console>: For information about how to get the value
by using the console, see Using Custom Domains with AWS Elastic
Beanstalk in the I<AWS Elastic Beanstalk Developer Guide>.

=item *

I<Elastic Beanstalk API>: Use the C<DescribeEnvironments> action to get
the value of the C<CNAME> attribute. For more information, see
DescribeEnvironments in the I<AWS Elastic Beanstalk API Reference>.

=item *

I<AWS CLI>: Use the C<describe-environments> command to get the value
of the C<CNAME> attribute. For more information, see
describe-environments in the I<AWS Command Line Interface Reference>.

=back

=item *

B<An ELB load balancer:> Specify the DNS name that is associated with
the load balancer. Get the DNS name by using the AWS Management
Console, the ELB API, or the AWS CLI. Use the same method to get values
for C<HostedZoneId> and C<DNSName>. If you get one value from the
console and the other value from the API or the CLI, creating the
resource record set will fail.

=over

=item *

I<AWS Management Console>: Go to the EC2 page, click B<Load Balancers>
in the navigation pane, choose the load balancer, choose the
B<Description> tab, and get the value of the B<DNS name> field. (If
you're routing traffic to a Classic Load Balancer, get the value that
begins with B<dualstack>.) Use the same process to get the value of the
B<Hosted zone> field. See AliasTarget$HostedZoneId.

=item *

I<Elastic Load Balancing API>: Use C<DescribeLoadBalancers> to get the
value of C<DNSName> and C<CanonicalHostedZoneNameId>. (You specify the
value of C<CanonicalHostedZoneNameId> for AliasTarget$HostedZoneId.)
For more information, see the applicable guide:

=over

=item *

Classic Load Balancer: DescribeLoadBalancers

=item *

Application Load Balancer: DescribeLoadBalancers

=back

=item *

I<AWS CLI>: Use C< describe-load-balancers > to get the value of
C<DNSName> and C<CanonicalHostedZoneNameId>. (You specify the value of
C<CanonicalHostedZoneNameId> for AliasTarget$HostedZoneId.)

=back

=item *

B<An Amazon S3 bucket that is configured as a static website:> Specify
the domain name of the Amazon S3 website endpoint in which you created
the bucket, for example, C<s3-website-us-east-1.amazonaws.com>. For
more information about valid values, see the table Amazon Simple
Storage Service (S3) Website Endpoints in the I<Amazon Web Services
General Reference>. For more information about using S3 buckets for
websites, see Getting Started with Amazon Route 53 in the I<Amazon
Route 53 Developer Guide.>

=item *

B<Another Amazon Route 53 resource record set>: Specify the value of
the C<Name> element for a resource record set in the current hosted
zone.

=back



=head2 B<REQUIRED> EvaluateTargetHealth => Bool

  I<Applies only to alias, weighted alias, latency alias, and failover
alias record sets:> If you set the value of C<EvaluateTargetHealth> to
C<true> for the resource record set or sets in an alias, weighted
alias, latency alias, or failover alias resource record set, and if you
specify a value for C< HealthCheck$Id > for every resource record set
that is referenced by these alias resource record sets, the alias
resource record sets inherit the health of the referenced resource
record sets.

In this configuration, when Amazon Route 53 receives a DNS query for an
alias resource record set:

=over

=item *

Amazon Route 53 looks at the resource record sets that are referenced
by the alias resource record sets to determine which health checks
they're using.

=item *

Amazon Route 53 checks the current status of each health check. (Amazon
Route 53 periodically checks the health of the endpoint that is
specified in a health check; it doesn't perform the health check when
the DNS query arrives.)

=item *

Based on the status of the health checks, Amazon Route 53 determines
which resource record sets are healthy. Unhealthy resource record sets
are immediately removed from consideration. In addition, if all of the
resource record sets that are referenced by an alias resource record
set are unhealthy, that alias resource record set also is immediately
removed from consideration.

=item *

Based on the configuration of the alias resource record sets (weighted
alias or latency alias, for example) and the configuration of the
resource record sets that they reference, Amazon Route 53 chooses a
resource record set from the healthy resource record sets, and responds
to the query.

=back

Note the following:

=over

=item *

You can't set C<EvaluateTargetHealth> to C<true> when the alias target
is a CloudFront distribution.

=item *

If the AWS resource that you specify in C<AliasTarget> is a resource
record set or a group of resource record sets (for example, a group of
weighted resource record sets), but it is not another alias resource
record set, we recommend that you associate a health check with all of
the resource record sets in the alias target.For more information, see
What Happens When You Omit Health Checks? in the I<Amazon Route 53
Developer Guide>.

=item *

If you specify an Elastic Beanstalk environment in C<HostedZoneId> and
C<DNSName>, and if the environment contains an ELB load balancer,
Elastic Load Balancing routes queries only to the healthy Amazon EC2
instances that are registered with the load balancer. (An environment
automatically contains an ELB load balancer if it includes more than
one EC2 instance.) If you set C<EvaluateTargetHealth> to C<true> and
either no EC2 instances are healthy or the load balancer itself is
unhealthy, Amazon Route 53 routes queries to other available resources
that are healthy, if any.

If the environment contains a single EC2 instance, there are no special
requirements.

=item *

If you specify an ELB load balancer in C< AliasTarget >, Elastic Load
Balancing routes queries only to the healthy EC2 instances that are
registered with the load balancer. If no EC2 instances are healthy or
if the load balancer itself is unhealthy, and if
C<EvaluateTargetHealth> is true for the corresponding alias resource
record set, Amazon Route 53 routes queries to other resources. When you
create a load balancer, you configure settings for Elastic Load
Balancing health checks; they're not Amazon Route 53 health checks, but
they perform a similar function. Do not create Amazon Route 53 health
checks for the EC2 instances that you register with an ELB load
balancer.

For more information, see How Health Checks Work in More Complex Amazon
Route 53 Configurations in the I<Amazon Route 53 Developers Guide>.

=item *

We recommend that you set C<EvaluateTargetHealth> to true only when you
have enough idle capacity to handle the failure of one or more
endpoints.

=back

For more information and examples, see Amazon Route 53 Health Checks
and DNS Failover in the I<Amazon Route 53 Developer Guide>.


=head2 B<REQUIRED> HostedZoneId => Str

  I<Alias resource records sets only>: The value used depends on where
the queries are routed:

=over

=item A CloudFront distribution

Specify C<Z2FDTNDATAQYW2>.

Alias resource record sets for CloudFront can't be created in a private
zone.

=item Elastic Beanstalk environment

Specify the hosted zone ID for the region in which you created the
environment. The environment must have a regionalized subdomain. For a
list of regions and the corresponding hosted zone IDs, see AWS Elastic
Beanstalk in the Regions and Endpoints chapter of the I<Amazon Web
Services General Reference>.

=item ELB load balancer

Specify the value of the hosted zone ID for the load balancer. Use the
following methods to get the hosted zone ID:

=over

=item *

AWS Management Console: Go to the Amazon EC2 page, click B<Load
Balancers> in the navigation pane, select the load balancer, and get
the value of the B<Hosted zone> field on the B<Description> tab. Use
the same process to get the value of B<DNS name>. (You specify the
value of B<DNS name> for AliasTarget$DNSName.)

=item *

I<Elastic Load Balancing API>: Use C<DescribeLoadBalancers> to get the
value of C<CanonicalHostedZoneNameId> and C<DNSName>. (You specify the
value of C<DNSName> for AliasTarget$DNSName.) For more information, see
the applicable guide:

=over

=item *

Classic Load Balancer: DescribeLoadBalancers

=item *

Application Load Balancer: DescribeLoadBalancers

=back

=item *

AWS CLI: Use C< describe-load-balancers > to get the value of
C<CanonicalHostedZoneNameID> and C<DNSName>. (You specify the value of
C<DNSName> for AliasTarget$DNSName.)

=back

=item An Amazon S3 bucket configured as a static website

Specify the hosted zone ID for the region that you created the bucket
in. For more information about valid values, see the table Amazon
Simple Storage Service Website Endpoints in the I<Amazon Web Services
General Reference>.

=item Another Amazon Route 53 resource record set in your hosted zone

Specify the hosted zone ID of your hosted zone. (An alias resource
record set can't reference a resource record set in a different hosted
zone.)

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

