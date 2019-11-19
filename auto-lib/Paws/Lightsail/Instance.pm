# Generated from default/object.tt
package Paws::Lightsail::Instance;
  use Moo;
  use Types::Standard qw/ArrayRef Str Bool/;
  use Paws::Lightsail::Types qw/Lightsail_InstanceState Lightsail_Tag Lightsail_AddOn Lightsail_ResourceLocation Lightsail_InstanceHardware Lightsail_InstanceNetworking/;
  has AddOns => (is => 'ro', isa => ArrayRef[Lightsail_AddOn]);
  has Arn => (is => 'ro', isa => Str);
  has BlueprintId => (is => 'ro', isa => Str);
  has BlueprintName => (is => 'ro', isa => Str);
  has BundleId => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has Hardware => (is => 'ro', isa => Lightsail_InstanceHardware);
  has Ipv6Address => (is => 'ro', isa => Str);
  has IsStaticIp => (is => 'ro', isa => Bool);
  has Location => (is => 'ro', isa => Lightsail_ResourceLocation);
  has Name => (is => 'ro', isa => Str);
  has Networking => (is => 'ro', isa => Lightsail_InstanceNetworking);
  has PrivateIpAddress => (is => 'ro', isa => Str);
  has PublicIpAddress => (is => 'ro', isa => Str);
  has ResourceType => (is => 'ro', isa => Str);
  has SshKeyName => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Lightsail_InstanceState);
  has SupportCode => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[Lightsail_Tag]);
  has Username => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'CreatedAt' => 'createdAt',
                       'BlueprintName' => 'blueprintName',
                       'SshKeyName' => 'sshKeyName',
                       'Hardware' => 'hardware',
                       'PrivateIpAddress' => 'privateIpAddress',
                       'Location' => 'location',
                       'BundleId' => 'bundleId',
                       'Ipv6Address' => 'ipv6Address',
                       'Arn' => 'arn',
                       'Networking' => 'networking',
                       'Tags' => 'tags',
                       'ResourceType' => 'resourceType',
                       'Name' => 'name',
                       'AddOns' => 'addOns',
                       'Username' => 'username',
                       'SupportCode' => 'supportCode',
                       'State' => 'state',
                       'IsStaticIp' => 'isStaticIp',
                       'PublicIpAddress' => 'publicIpAddress',
                       'BlueprintId' => 'blueprintId'
                     },
  'types' => {
               'Tags' => {
                           'class' => 'Paws::Lightsail::Tag',
                           'type' => 'ArrayRef[Lightsail_Tag]'
                         },
               'Networking' => {
                                 'type' => 'Lightsail_InstanceNetworking',
                                 'class' => 'Paws::Lightsail::InstanceNetworking'
                               },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Ipv6Address' => {
                                  'type' => 'Str'
                                },
               'BundleId' => {
                               'type' => 'Str'
                             },
               'Location' => {
                               'class' => 'Paws::Lightsail::ResourceLocation',
                               'type' => 'Lightsail_ResourceLocation'
                             },
               'PrivateIpAddress' => {
                                       'type' => 'Str'
                                     },
               'Hardware' => {
                               'class' => 'Paws::Lightsail::InstanceHardware',
                               'type' => 'Lightsail_InstanceHardware'
                             },
               'SshKeyName' => {
                                 'type' => 'Str'
                               },
               'BlueprintName' => {
                                    'type' => 'Str'
                                  },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'BlueprintId' => {
                                  'type' => 'Str'
                                },
               'PublicIpAddress' => {
                                      'type' => 'Str'
                                    },
               'IsStaticIp' => {
                                 'type' => 'Bool'
                               },
               'SupportCode' => {
                                  'type' => 'Str'
                                },
               'State' => {
                            'class' => 'Paws::Lightsail::InstanceState',
                            'type' => 'Lightsail_InstanceState'
                          },
               'Username' => {
                               'type' => 'Str'
                             },
               'Name' => {
                           'type' => 'Str'
                         },
               'AddOns' => {
                             'class' => 'Paws::Lightsail::AddOn',
                             'type' => 'ArrayRef[Lightsail_AddOn]'
                           },
               'ResourceType' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::Instance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::Instance object:

  $service_obj->Method(Att1 => { AddOns => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::Instance object:

  $result = $service_obj->Method(...);
  $result->Att1->AddOns

=head1 DESCRIPTION

Describes an instance (a virtual private server).

=head1 ATTRIBUTES


=head2 AddOns => ArrayRef[Lightsail_AddOn]

  An array of objects representing the add-ons enabled on the instance.


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the instance (e.g.,
C<arn:aws:lightsail:us-east-2:123456789101:Instance/244ad76f-8aad-4741-809f-12345EXAMPLE>).


=head2 BlueprintId => Str

  The blueprint ID (e.g., C<os_amlinux_2016_03>).


=head2 BlueprintName => Str

  The friendly name of the blueprint (e.g., C<Amazon Linux>).


=head2 BundleId => Str

  The bundle for the instance (e.g., C<micro_1_0>).


=head2 CreatedAt => Str

  The timestamp when the instance was created (e.g., C<1479734909.17>).


=head2 Hardware => Lightsail_InstanceHardware

  The size of the vCPU and the amount of RAM for the instance.


=head2 Ipv6Address => Str

  The IPv6 address of the instance.


=head2 IsStaticIp => Bool

  A Boolean value indicating whether this instance has a static IP
assigned to it.


=head2 Location => Lightsail_ResourceLocation

  The region name and Availability Zone where the instance is located.


=head2 Name => Str

  The name the user gave the instance (e.g., C<Amazon_Linux-1GB-Ohio-1>).


=head2 Networking => Lightsail_InstanceNetworking

  Information about the public ports and monthly data transfer rates for
the instance.


=head2 PrivateIpAddress => Str

  The private IP address of the instance.


=head2 PublicIpAddress => Str

  The public IP address of the instance.


=head2 ResourceType => Str

  The type of resource (usually C<Instance>).


=head2 SshKeyName => Str

  The name of the SSH key being used to connect to the instance (e.g.,
C<LightsailDefaultKeyPair>).


=head2 State => Lightsail_InstanceState

  The status code and the state (e.g., C<running>) for the instance.


=head2 SupportCode => Str

  The support code. Include this code in your email to support when you
have questions about an instance or another resource in Lightsail. This
code enables our support team to look up your Lightsail information
more easily.


=head2 Tags => ArrayRef[Lightsail_Tag]

  The tag keys and optional values for the resource. For more information
about tags in Lightsail, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags).


=head2 Username => Str

  The user name for connecting to the instance (e.g., C<ec2-user>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

