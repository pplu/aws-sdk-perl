package Paws::EC2::VpcEndpointConnection;
  use Moo;  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::EC2::Types qw/EC2_DnsEntry/;
  has CreationTimestamp => (is => 'ro', isa => Str);
  has DnsEntries => (is => 'ro', isa => ArrayRef[EC2_DnsEntry]);
  has NetworkLoadBalancerArns => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ServiceId => (is => 'ro', isa => Str);
  has VpcEndpointId => (is => 'ro', isa => Str);
  has VpcEndpointOwner => (is => 'ro', isa => Str);
  has VpcEndpointState => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VpcEndpointOwner' => {
                                       'type' => 'Str'
                                     },
               'CreationTimestamp' => {
                                        'type' => 'Str'
                                      },
               'NetworkLoadBalancerArns' => {
                                              'type' => 'ArrayRef[Str|Undef]'
                                            },
               'DnsEntries' => {
                                 'class' => 'Paws::EC2::DnsEntry',
                                 'type' => 'ArrayRef[EC2_DnsEntry]'
                               },
               'VpcEndpointState' => {
                                       'type' => 'Str'
                                     },
               'VpcEndpointId' => {
                                    'type' => 'Str'
                                  },
               'ServiceId' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'VpcEndpointOwner' => 'vpcEndpointOwner',
                       'CreationTimestamp' => 'creationTimestamp',
                       'NetworkLoadBalancerArns' => 'networkLoadBalancerArnSet',
                       'DnsEntries' => 'dnsEntrySet',
                       'VpcEndpointState' => 'vpcEndpointState',
                       'VpcEndpointId' => 'vpcEndpointId',
                       'ServiceId' => 'serviceId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpcEndpointConnection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpcEndpointConnection object:

  $service_obj->Method(Att1 => { CreationTimestamp => $value, ..., VpcEndpointState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpcEndpointConnection object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTimestamp

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreationTimestamp => Str

  The date and time the VPC endpoint was created.


=head2 DnsEntries => ArrayRef[EC2_DnsEntry]

  The DNS entries for the VPC endpoint.


=head2 NetworkLoadBalancerArns => ArrayRef[Str|Undef]

  The Amazon Resource Names (ARNs) of the network load balancers for the
service.


=head2 ServiceId => Str

  The ID of the service to which the endpoint is connected.


=head2 VpcEndpointId => Str

  The ID of the VPC endpoint.


=head2 VpcEndpointOwner => Str

  The AWS account ID of the owner of the VPC endpoint.


=head2 VpcEndpointState => Str

  The state of the VPC endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
