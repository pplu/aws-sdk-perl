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
redirecting queries to. An Elastic Beanstalk environment must have a
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
private hosted zone, see Configuring Failover in a Private Hosted Zone
(http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html).

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> DNSName => Str

  I<Alias resource record sets only:> The value that you specify depends
on where you want to route queries:

=over

=item CloudFront distribution

Specify the domain name that CloudFront assigned when you created your
distribution.

Your CloudFront distribution must include an alternate domain name that
matches the name of the resource record set. For example, if the name
of the resource record set is I<acme.example.com>, your CloudFront
distribution must include I<acme.example.com> as one of the alternate
domain names. For more information, see Using Alternate Domain Names
(CNAMEs)
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html)
in the I<Amazon CloudFront Developer Guide>.

For failover alias records, you can't specify a CloudFront distribution
for both the primary and secondary records. A distribution must include
an alternate domain name that matches the name of the record. However,
the primary and secondary records have the same name, and you can't
include the same alternate domain name in more than one distribution.

=item Elastic Beanstalk environment

If the domain name for your Elastic Beanstalk environment includes the
region that you deployed the environment in, you can create an alias
record that routes traffic to the environment. For example, the domain
name C<my-environment.I<us-west-2>.elasticbeanstalk.com> is a
regionalized domain name.

For environments that were created before early 2016, the domain name
doesn't include the region. To route traffic to these environments, you
must create a CNAME record instead of an alias record. Note that you
can't create a CNAME record for the root domain name. For example, if
your domain name is example.com, you can create a record that routes
traffic for acme.example.com to your Elastic Beanstalk environment, but
you can't create a record that routes traffic for example.com to your
Elastic Beanstalk environment.

For Elastic Beanstalk environments that have regionalized subdomains,
specify the C<CNAME> attribute for the environment. You can use the
following methods to get the value of the CNAME attribute:

=over

=item *

I<AWS Management Console>: For information about how to get the value
by using the console, see Using Custom Domains with AWS Elastic
Beanstalk
(http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/customdomains.html)
in the I<AWS Elastic Beanstalk Developer Guide>.

=item *

I<Elastic Beanstalk API>: Use the C<DescribeEnvironments> action to get
the value of the C<CNAME> attribute. For more information, see
DescribeEnvironments
(http://docs.aws.amazon.com/elasticbeanstalk/latest/api/API_DescribeEnvironments.html)
in the I<AWS Elastic Beanstalk API Reference>.

=item *

I<AWS CLI>: Use the C<describe-environments> command to get the value
of the C<CNAME> attribute. For more information, see
describe-environments
(http://docs.aws.amazon.com/cli/latest/reference/elasticbeanstalk/describe-environments.html)
in the I<AWS Command Line Interface Reference>.

=back

=item ELB load balancer

Specify the DNS name that is associated with the load balancer. Get the
DNS name by using the AWS Management Console, the ELB API, or the AWS
CLI.

=over

=item *

B<AWS Management Console>: Go to the EC2 page, choose B<Load Balancers>
in the navigation pane, choose the load balancer, choose the
B<Description> tab, and get the value of the B<DNS name> field.

If you're routing traffic to a Classic Load Balancer, get the value
that begins with B<dualstack>. If you're routing traffic to another
type of load balancer, get the value that applies to the record type, A
or AAAA.

=item *

B<Elastic Load Balancing API>: Use C<DescribeLoadBalancers> to get the
value of C<DNSName>. For more information, see the applicable guide:

=over

=item *

Classic Load Balancers: DescribeLoadBalancers
(http://docs.aws.amazon.com/elasticloadbalancing/2012-06-01/APIReference/API_DescribeLoadBalancers.html)

=item *

Application and Network Load Balancers: DescribeLoadBalancers
(http://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html)

=back

=item *

B<AWS CLI>: Use C<describe-load-balancers> to get the value of
C<DNSName>. For more information, see the applicable guide:

=over

=item *

Classic Load Balancers: describe-load-balancers
(http://docs.aws.amazon.com/cli/latest/reference/elb/describe-load-balancers.html)

=item *

Application and Network Load Balancers: describe-load-balancers
(http://docs.aws.amazon.com/cli/latest/reference/elbv2/describe-load-balancers.html)

=back

=back

=item Amazon S3 bucket that is configured as a static website

Specify the domain name of the Amazon S3 website endpoint that you
created the bucket in, for example,
C<s3-website.us-east-2.amazonaws.com>. For more information about valid
values, see the table Amazon Simple Storage Service (S3) Website
Endpoints
(http://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) in
the I<Amazon Web Services General Reference>. For more information
about using S3 buckets for websites, see Getting Started with Amazon
Route 53
(http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/getting-started.html)
in the I<Amazon Route 53 Developer Guide.>

=item Another Route 53 resource record set

Specify the value of the C<Name> element for a resource record set in
the current hosted zone.

If you're creating an alias record that has the same name as the hosted
zone (known as the zone apex), you can't specify the domain name for a
record for which the value of C<Type> is C<CNAME>. This is because the
alias record must have the same type as the record that you're routing
traffic to, and creating a CNAME record for the zone apex isn't
supported even for an alias record.

=back



=head2 B<REQUIRED> EvaluateTargetHealth => Bool

  I<Applies only to alias, failover alias, geolocation alias, latency
alias, and weighted alias resource record sets:> When
C<EvaluateTargetHealth> is C<true>, an alias resource record set
inherits the health of the referenced AWS resource, such as an ELB load
balancer or another resource record set in the hosted zone.

Note the following:

=over

=item CloudFront distributions

You can't set C<EvaluateTargetHealth> to C<true> when the alias target
is a CloudFront distribution.

=item Elastic Beanstalk environments that have regionalized subdomains

If you specify an Elastic Beanstalk environment in C<DNSName> and the
environment contains an ELB load balancer, Elastic Load Balancing
routes queries only to the healthy Amazon EC2 instances that are
registered with the load balancer. (An environment automatically
contains an ELB load balancer if it includes more than one Amazon EC2
instance.) If you set C<EvaluateTargetHealth> to C<true> and either no
Amazon EC2 instances are healthy or the load balancer itself is
unhealthy, Route 53 routes queries to other available resources that
are healthy, if any.

If the environment contains a single Amazon EC2 instance, there are no
special requirements.

=item ELB load balancers

Health checking behavior depends on the type of load balancer:

=over

=item *

B<Classic Load Balancers>: If you specify an ELB Classic Load Balancer
in C<DNSName>, Elastic Load Balancing routes queries only to the
healthy Amazon EC2 instances that are registered with the load
balancer. If you set C<EvaluateTargetHealth> to C<true> and either no
EC2 instances are healthy or the load balancer itself is unhealthy,
Route 53 routes queries to other resources.

=item *

B<Application and Network Load Balancers>: If you specify an ELB
Application or Network Load Balancer and you set
C<EvaluateTargetHealth> to C<true>, Route 53 routes queries to the load
balancer based on the health of the target groups that are associated
with the load balancer:

=over

=item *

For an Application or Network Load Balancer to be considered healthy,
every target group that contains targets must contain at least one
healthy target. If any target group contains only unhealthy targets,
the load balancer is considered unhealthy, and Route 53 routes queries
to other resources.

=item *

A target group that has no registered targets is considered healthy.

=back

=back

When you create a load balancer, you configure settings for Elastic
Load Balancing health checks; they're not Route 53 health checks, but
they perform a similar function. Do not create Route 53 health checks
for the EC2 instances that you register with an ELB load balancer.

=item S3 buckets

There are no special requirements for setting C<EvaluateTargetHealth>
to C<true> when the alias target is an S3 bucket.

=item Other records in the same hosted zone

If the AWS resource that you specify in C<DNSName> is a record or a
group of records (for example, a group of weighted records) but is not
another alias record, we recommend that you associate a health check
with all of the records in the alias target. For more information, see
What Happens When You Omit Health Checks?
(http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-complex-configs.html#dns-failover-complex-configs-hc-omitting)
in the I<Amazon Route 53 Developer Guide>.

=back

For more information and examples, see Amazon Route 53 Health Checks
and DNS Failover
(http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html)
in the I<Amazon Route 53 Developer Guide>.


=head2 B<REQUIRED> HostedZoneId => Str

  I<Alias resource records sets only>: The value used depends on where
you want to route traffic:

=over

=item CloudFront distribution

Specify C<Z2FDTNDATAQYW2>.

Alias resource record sets for CloudFront can't be created in a private
zone.

=item Elastic Beanstalk environment

Specify the hosted zone ID for the region that you created the
environment in. The environment must have a regionalized subdomain. For
a list of regions and the corresponding hosted zone IDs, see AWS
Elastic Beanstalk
(http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region)
in the "AWS Regions and Endpoints" chapter of the I<Amazon Web Services
General Reference>.

=item ELB load balancer

Specify the value of the hosted zone ID for the load balancer. Use the
following methods to get the hosted zone ID:

=over

=item *

Elastic Load Balancing
(http://docs.aws.amazon.com/general/latest/gr/rande.html#elb_region)
table in the "AWS Regions and Endpoints" chapter of the I<Amazon Web
Services General Reference>: Use the value that corresponds with the
region that you created your load balancer in. Note that there are
separate columns for Application and Classic Load Balancers and for
Network Load Balancers.

=item *

B<AWS Management Console>: Go to the Amazon EC2 page, choose B<Load
Balancers> in the navigation pane, select the load balancer, and get
the value of the B<Hosted zone> field on the B<Description> tab.

=item *

B<Elastic Load Balancing API>: Use C<DescribeLoadBalancers> to get the
applicable value. For more information, see the applicable guide:

=over

=item *

Classic Load Balancers: Use DescribeLoadBalancers
(http://docs.aws.amazon.com/elasticloadbalancing/2012-06-01/APIReference/API_DescribeLoadBalancers.html)
to get the value of C<CanonicalHostedZoneNameId>.

=item *

Application and Network Load Balancers: Use DescribeLoadBalancers
(http://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html)
to get the value of C<CanonicalHostedZoneId>.

=back

=item *

B<AWS CLI>: Use C<describe-load-balancers> to get the applicable value.
For more information, see the applicable guide:

=over

=item *

Classic Load Balancers: Use describe-load-balancers
(http://docs.aws.amazon.com/cli/latest/reference/elb/describe-load-balancers.html)
to get the value of C<CanonicalHostedZoneNameId>.

=item *

Application and Network Load Balancers: Use describe-load-balancers
(http://docs.aws.amazon.com/cli/latest/reference/elbv2/describe-load-balancers.html)
to get the value of C<CanonicalHostedZoneId>.

=back

=back

=item An Amazon S3 bucket configured as a static website

Specify the hosted zone ID for the region that you created the bucket
in. For more information about valid values, see the Amazon Simple
Storage Service Website Endpoints
(http://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region)
table in the "AWS Regions and Endpoints" chapter of the I<Amazon Web
Services General Reference>.

=item Another Route 53 resource record set in your hosted zone

Specify the hosted zone ID of your hosted zone. (An alias resource
record set can't reference a resource record set in a different hosted
zone.)

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

