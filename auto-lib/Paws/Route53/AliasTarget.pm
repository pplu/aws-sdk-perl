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
distribution, ELB load balancer, Amazon S3 bucket, or Amazon Route 53
resource record set to which you are routing traffic.

If you're creating resource record sets for a private hosted zone, note
the following:

=over

=item * You can create alias resource record sets only for Amazon Route
53 resource record sets in the same private hosted zone. Creating alias
resource record sets for CloudFront distributions, ELB load balancers,
and Amazon S3 buckets is not supported.

=item * You can't create alias resource record sets for failover,
geolocation, or latency resource record sets in a private hosted zone.

=back

For more information and an example, see Example: Creating Alias
Resource Record Sets in the I<Amazon Route 53 API Reference>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DNSName => Str

  I<Alias resource record sets only:> The external DNS name associated
with the AWS Resource. The value that you specify depends on where you
want to route queries:

=over

=item * B<A CloudFront distribution:> Specify the domain name that
CloudFront assigned when you created your distribution. Your CloudFront
distribution must include an alternate domain name that matches the
name of the resource record set. For example, if the name of the
resource record set is C<acme.example.com>, your CloudFront
distribution must include C<acme.example.com> as one of the alternate
domain names. For more information, see Using Alternate Domain Names
(CNAMEs) in the I<Amazon CloudFront Developer Guide>.

=item * B<An ELB load balancer:> Specify the DNS name associated with
the load balancer. You can get the DNS name by using the AWS Management
Console, the ELB API, or the AWS CLI. Use the same method to get values
for C<HostedZoneId> and C<DNSName>. If you get one value from the
console and the other value from the API or the CLI, creating the
resource record set will fail.

=item * B<An Elastic Beanstalk environment:> Specify the CNAME
attribute for the environment. (The environment must have a
regionalized domain name.)

=item * B<An Amazon S3 bucket that is configured as a static website:>
Specify the domain name of the Amazon S3 website endpoint in which you
created the bucket; for example, C<s3-website-us-east-1.amazonaws.com>.
For more information about valid values, see the table Amazon Simple
Storage Service (S3) Website Endpoints in the I<Amazon Web Services
General Reference>. For more information about using Amazon S3 buckets
for websites, see Hosting a Static Website on Amazon S3 in the I<Amazon
Simple Storage Service Developer Guide>.

=item * B<Another Amazon Route 53 resource record set:> Specify the
value of the C<Name> element for a resource record set in the current
hosted zone.

=back

For more information and an example, see Example: Creating Alias
Resource Record Sets in the I<Amazon Route 53 API Reference>.


=head2 B<REQUIRED> EvaluateTargetHealth => Bool

  I<Alias resource record sets only:> If you set the value of
C<EvaluateTargetHealth> to C<true> for the resource record set or sets
in an alias, weighted alias, latency alias, or failover alias resource
record set, and if you specify a value for C<HealthCheckId> for every
resource record set that is referenced by these alias resource record
sets, the alias resource record sets inherit the health of the
referenced resource record sets.

In this configuration, when Amazon Route 53 receives a DNS query for an
alias resource record set:

=over

=item 1. Amazon Route 53 looks at the resource record sets that are
referenced by the alias resource record sets to determine which health
checks they're using.

=item 2. Amazon Route 53 checks the current status of each health
check. (Amazon Route 53 periodically checks the health of the endpoint
that is specified in a health check; it doesn't perform the health
check when the DNS query arrives.)

=item 3. Based on the status of the health checks, Amazon Route 53
determines which resource record sets are healthy. Unhealthy resource
record sets are immediately removed from consideration. In addition, if
all of the resource record sets that are referenced by an alias
resource record set are unhealthy, that alias resource record set also
is immediately removed from consideration.

=item 4. Based on the configuration of the alias resource record sets
(weighted alias or latency alias, for example) and the configuration of
the resource record sets that they reference, Amazon Route 53 chooses a
resource record set from the healthy resource record sets, and responds
to the query.

=back

Note the following:

=over

=item * You cannot set C<EvaluateTargetHealth> to true when the alias
target is a CloudFront distribution.

=item * If the AWS resource that you specify in C<AliasTarget> is a
resource record set or a group of resource record sets (for example, a
group of weighted resource record sets), but it is not another alias
resource record set, we recommend that you associate a health check
with all of the resource record sets in the alias target. For more
information, see What Happens When You Omit Health Checks? in the
I<Amazon Route 53 Developer Guide>.

=item * If you specify an ELB load balancer in C<AliasTarget>, Elastic
Load Balancing routes queries only to the healthy Amazon EC2 instances
that are registered with the load balancer. If no Amazon EC2 instances
are healthy or if the load balancer itself is unhealthy, and if
C<EvaluateTargetHealth> is C<true> for the corresponding alias resource
record set, Amazon Route 53 routes queries to other resources.

=item * When you create a load balancer, you configure settings for
Elastic Load Balancing health checks; they're not Amazon Route 53
health checks, but they perform a similar function. Do not create
Amazon Route 53 health checks for the Amazon EC2 instances that you
register with an ELB load balancer. For more information, see How
Health Checks Work in More Complex Amazon Route 53 Configurations in
the I<Amazon Route 53 Developer Guide>.

=back

We recommend that you set C<EvaluateTargetHealth> to C<true> only when
you have enough idle capacity to handle the failure of one or more
endpoints.

For more information and examples, see Amazon Route 53 Health Checks
and DNS Failover in the I<Amazon Route 53 Developer Guide>.


=head2 B<REQUIRED> HostedZoneId => Str

  I<Alias resource record sets only:> The value you use depends on where
you want to route queries:

=over

=item * B<A CloudFront distribution:> Specify C<Z2FDTNDATAQYW2>.

=item * An ELB load balancer: Specify the value of the hosted zone ID
for the load balancer. You can get the hosted zone ID by using the AWS
Management Console, the ELB API, or the AWS CLI. Use the same method to
get values for C<HostedZoneId> and C<DNSName>. If you get one value
from the console and the other value from the API or the CLI, creating
the resource record set will fail.

=item * B<An Amazon S3 bucket that is configured as a static website:>
Specify the hosted zone ID for the Amazon S3 website endpoint in which
you created the bucket. For more information about valid values, see
the table Amazon Simple Storage Service (S3) Website Endpoints in the
I<Amazon Web Services General Reference>.

=item * B<Another Amazon Route 53 resource record set in your hosted
zone:> Specify the hosted zone ID of your hosted zone. (An alias
resource record set cannot reference a resource record set in a
different hosted zone.)

=back

For more information and an example, see Example: Creating Alias
Resource Record Sets in the I<Amazon Route 53 API Reference>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

