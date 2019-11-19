# Generated from default/object.tt
package Paws::Lightsail::LoadBalancer;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::Lightsail::Types qw/Lightsail_Tag Lightsail_LoadBalancerConfigurationOptions Lightsail_InstanceHealthSummary Lightsail_LoadBalancerTlsCertificateSummary Lightsail_ResourceLocation/;
  has Arn => (is => 'ro', isa => Str);
  has ConfigurationOptions => (is => 'ro', isa => Lightsail_LoadBalancerConfigurationOptions);
  has CreatedAt => (is => 'ro', isa => Str);
  has DnsName => (is => 'ro', isa => Str);
  has HealthCheckPath => (is => 'ro', isa => Str);
  has InstanceHealthSummary => (is => 'ro', isa => ArrayRef[Lightsail_InstanceHealthSummary]);
  has InstancePort => (is => 'ro', isa => Int);
  has Location => (is => 'ro', isa => Lightsail_ResourceLocation);
  has Name => (is => 'ro', isa => Str);
  has Protocol => (is => 'ro', isa => Str);
  has PublicPorts => (is => 'ro', isa => ArrayRef[Int]);
  has ResourceType => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has SupportCode => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[Lightsail_Tag]);
  has TlsCertificateSummaries => (is => 'ro', isa => ArrayRef[Lightsail_LoadBalancerTlsCertificateSummary]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ResourceType' => 'resourceType',
                       'ConfigurationOptions' => 'configurationOptions',
                       'InstancePort' => 'instancePort',
                       'DnsName' => 'dnsName',
                       'HealthCheckPath' => 'healthCheckPath',
                       'TlsCertificateSummaries' => 'tlsCertificateSummaries',
                       'PublicPorts' => 'publicPorts',
                       'State' => 'state',
                       'SupportCode' => 'supportCode',
                       'Protocol' => 'protocol',
                       'Name' => 'name',
                       'Location' => 'location',
                       'InstanceHealthSummary' => 'instanceHealthSummary',
                       'CreatedAt' => 'createdAt',
                       'Tags' => 'tags',
                       'Arn' => 'arn'
                     },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'SupportCode' => {
                                  'type' => 'Str'
                                },
               'Protocol' => {
                               'type' => 'Str'
                             },
               'State' => {
                            'type' => 'Str'
                          },
               'TlsCertificateSummaries' => {
                                              'type' => 'ArrayRef[Lightsail_LoadBalancerTlsCertificateSummary]',
                                              'class' => 'Paws::Lightsail::LoadBalancerTlsCertificateSummary'
                                            },
               'PublicPorts' => {
                                  'type' => 'ArrayRef[Int]'
                                },
               'HealthCheckPath' => {
                                      'type' => 'Str'
                                    },
               'DnsName' => {
                              'type' => 'Str'
                            },
               'InstancePort' => {
                                   'type' => 'Int'
                                 },
               'ConfigurationOptions' => {
                                           'class' => 'Paws::Lightsail::LoadBalancerConfigurationOptions',
                                           'type' => 'Lightsail_LoadBalancerConfigurationOptions'
                                         },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Tags' => {
                           'type' => 'ArrayRef[Lightsail_Tag]',
                           'class' => 'Paws::Lightsail::Tag'
                         },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'InstanceHealthSummary' => {
                                            'class' => 'Paws::Lightsail::InstanceHealthSummary',
                                            'type' => 'ArrayRef[Lightsail_InstanceHealthSummary]'
                                          },
               'Location' => {
                               'class' => 'Paws::Lightsail::ResourceLocation',
                               'type' => 'Lightsail_ResourceLocation'
                             }
             }
}
;
    return $Params_map;
  }


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


=head2 ConfigurationOptions => Lightsail_LoadBalancerConfigurationOptions

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


=head2 InstanceHealthSummary => ArrayRef[Lightsail_InstanceHealthSummary]

  An array of InstanceHealthSummary objects describing the health of the
load balancer.


=head2 InstancePort => Int

  The port where the load balancer will direct traffic to your Lightsail
instances. For HTTP traffic, it's port 80. For HTTPS traffic, it's port
443.


=head2 Location => Lightsail_ResourceLocation

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


=head2 Tags => ArrayRef[Lightsail_Tag]

  The tag keys and optional values for the resource. For more information
about tags in Lightsail, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags).


=head2 TlsCertificateSummaries => ArrayRef[Lightsail_LoadBalancerTlsCertificateSummary]

  An array of LoadBalancerTlsCertificateSummary objects that provide
additional information about the SSL/TLS certificates. For example, if
C<true>, the certificate is attached to the load balancer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

