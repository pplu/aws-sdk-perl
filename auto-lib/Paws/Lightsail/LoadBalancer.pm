package Paws::Lightsail::LoadBalancer;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has ConfigurationOptions => (is => 'ro', isa => 'Paws::Lightsail::LoadBalancerConfigurationOptions', request_name => 'configurationOptions', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has DnsName => (is => 'ro', isa => 'Str', request_name => 'dnsName', traits => ['NameInRequest']);
  has HealthCheckPath => (is => 'ro', isa => 'Str', request_name => 'healthCheckPath', traits => ['NameInRequest']);
  has InstanceHealthSummary => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::InstanceHealthSummary]', request_name => 'instanceHealthSummary', traits => ['NameInRequest']);
  has InstancePort => (is => 'ro', isa => 'Int', request_name => 'instancePort', traits => ['NameInRequest']);
  has Location => (is => 'ro', isa => 'Paws::Lightsail::ResourceLocation', request_name => 'location', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', request_name => 'protocol', traits => ['NameInRequest']);
  has PublicPorts => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'publicPorts', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has SupportCode => (is => 'ro', isa => 'Str', request_name => 'supportCode', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', request_name => 'tags', traits => ['NameInRequest']);
  has TlsCertificateSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::LoadBalancerTlsCertificateSummary]', request_name => 'tlsCertificateSummaries', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::LoadBalancer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::LoadBalancer object:

  $service_obj->Method(Att1 => { Arn => $value, ..., TlsCertificateSummaries => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::LoadBalancer object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes the Lightsail load balancer.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the load balancer.


=head2 ConfigurationOptions => L<Paws::Lightsail::LoadBalancerConfigurationOptions>

  A string to string map of the configuration options for your load
balancer. Valid values are listed below.


=head2 CreatedAt => Str

  The date when your load balancer was created.


=head2 DnsName => Str

  The DNS name of your Lightsail load balancer.


=head2 HealthCheckPath => Str

  The path you specified to perform your health checks. If no path is
specified, the load balancer tries to make a request to the default
(root) page.


=head2 InstanceHealthSummary => ArrayRef[L<Paws::Lightsail::InstanceHealthSummary>]

  An array of InstanceHealthSummary objects describing the health of the
load balancer.


=head2 InstancePort => Int

  The port where the load balancer will direct traffic to your Lightsail
instances. For HTTP traffic, it's port 80. For HTTPS traffic, it's port
443.


=head2 Location => L<Paws::Lightsail::ResourceLocation>

  The AWS Region where your load balancer was created (e.g.,
C<us-east-2a>). Lightsail automatically creates your load balancer
across Availability Zones.


=head2 Name => Str

  The name of the load balancer (e.g., C<my-load-balancer>).


=head2 Protocol => Str

  The protocol you have enabled for your load balancer. Valid values are
below.

You can't just have C<HTTP_HTTPS>, but you can have just C<HTTP>.


=head2 PublicPorts => ArrayRef[Int]

  An array of public port settings for your load balancer. For HTTP, use
port 80. For HTTPS, use port 443.


=head2 ResourceType => Str

  The resource type (e.g., C<LoadBalancer>.


=head2 State => Str

  The status of your load balancer. Valid values are below.


=head2 SupportCode => Str

  The support code. Include this code in your email to support when you
have questions about your Lightsail load balancer. This code enables
our support team to look up your Lightsail information more easily.


=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

  The tag keys and optional values for the resource. For more information
about tags in Lightsail, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags).


=head2 TlsCertificateSummaries => ArrayRef[L<Paws::Lightsail::LoadBalancerTlsCertificateSummary>]

  An array of LoadBalancerTlsCertificateSummary objects that provide
additional information about the SSL/TLS certificates. For example, if
C<true>, the certificate is attached to the load balancer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

