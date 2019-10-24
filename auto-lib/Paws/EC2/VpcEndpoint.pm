package Paws::EC2::VpcEndpoint;
  use Moo;  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::EC2::Types qw/EC2_DnsEntry EC2_Tag EC2_SecurityGroupIdentifier/;
  has CreationTimestamp => (is => 'ro', isa => Str);
  has DnsEntries => (is => 'ro', isa => ArrayRef[EC2_DnsEntry]);
  has Groups => (is => 'ro', isa => ArrayRef[EC2_SecurityGroupIdentifier]);
  has NetworkInterfaceIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has OwnerId => (is => 'ro', isa => Str);
  has PolicyDocument => (is => 'ro', isa => Str);
  has PrivateDnsEnabled => (is => 'ro', isa => Bool);
  has RequesterManaged => (is => 'ro', isa => Bool);
  has RouteTableIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ServiceName => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has SubnetIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has VpcEndpointId => (is => 'ro', isa => Str);
  has VpcEndpointType => (is => 'ro', isa => Str);
  has VpcId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Groups' => {
                             'class' => 'Paws::EC2::SecurityGroupIdentifier',
                             'type' => 'ArrayRef[EC2_SecurityGroupIdentifier]'
                           },
               'CreationTimestamp' => {
                                        'type' => 'Str'
                                      },
               'RequesterManaged' => {
                                       'type' => 'Bool'
                                     },
               'SubnetIds' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'State' => {
                            'type' => 'Str'
                          },
               'RouteTableIds' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'VpcId' => {
                            'type' => 'Str'
                          },
               'DnsEntries' => {
                                 'class' => 'Paws::EC2::DnsEntry',
                                 'type' => 'ArrayRef[EC2_DnsEntry]'
                               },
               'NetworkInterfaceIds' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'VpcEndpointType' => {
                                      'type' => 'Str'
                                    },
               'VpcEndpointId' => {
                                    'type' => 'Str'
                                  },
               'PolicyDocument' => {
                                     'type' => 'Str'
                                   },
               'ServiceName' => {
                                  'type' => 'Str'
                                },
               'OwnerId' => {
                              'type' => 'Str'
                            },
               'PrivateDnsEnabled' => {
                                        'type' => 'Bool'
                                      },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         }
             },
  'NameInRequest' => {
                       'Groups' => 'groupSet',
                       'CreationTimestamp' => 'creationTimestamp',
                       'RequesterManaged' => 'requesterManaged',
                       'SubnetIds' => 'subnetIdSet',
                       'State' => 'state',
                       'RouteTableIds' => 'routeTableIdSet',
                       'VpcId' => 'vpcId',
                       'DnsEntries' => 'dnsEntrySet',
                       'NetworkInterfaceIds' => 'networkInterfaceIdSet',
                       'VpcEndpointType' => 'vpcEndpointType',
                       'VpcEndpointId' => 'vpcEndpointId',
                       'PolicyDocument' => 'policyDocument',
                       'ServiceName' => 'serviceName',
                       'OwnerId' => 'ownerId',
                       'PrivateDnsEnabled' => 'privateDnsEnabled',
                       'Tags' => 'tagSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpcEndpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpcEndpoint object:

  $service_obj->Method(Att1 => { CreationTimestamp => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpcEndpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTimestamp

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreationTimestamp => Str

  The date and time the VPC endpoint was created.


=head2 DnsEntries => ArrayRef[EC2_DnsEntry]

  (Interface endpoint) The DNS entries for the endpoint.


=head2 Groups => ArrayRef[EC2_SecurityGroupIdentifier]

  (Interface endpoint) Information about the security groups associated
with the network interface.


=head2 NetworkInterfaceIds => ArrayRef[Str|Undef]

  (Interface endpoint) One or more network interfaces for the endpoint.


=head2 OwnerId => Str

  The ID of the AWS account that owns the VPC endpoint.


=head2 PolicyDocument => Str

  The policy document associated with the endpoint, if applicable.


=head2 PrivateDnsEnabled => Bool

  (Interface endpoint) Indicates whether the VPC is associated with a
private hosted zone.


=head2 RequesterManaged => Bool

  Indicates whether the VPC endpoint is being managed by its service.


=head2 RouteTableIds => ArrayRef[Str|Undef]

  (Gateway endpoint) One or more route tables associated with the
endpoint.


=head2 ServiceName => Str

  The name of the service to which the endpoint is associated.


=head2 State => Str

  The state of the VPC endpoint.


=head2 SubnetIds => ArrayRef[Str|Undef]

  (Interface endpoint) One or more subnets in which the endpoint is
located.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the VPC endpoint.


=head2 VpcEndpointId => Str

  The ID of the VPC endpoint.


=head2 VpcEndpointType => Str

  The type of endpoint.


=head2 VpcId => Str

  The ID of the VPC to which the endpoint is associated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
