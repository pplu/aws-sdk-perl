package Paws::EC2::ServiceConfiguration;
  use Moo;  use Types::Standard qw/Bool ArrayRef Undef Str/;
  use Paws::EC2::Types qw/EC2_Tag EC2_ServiceTypeDetail/;
  has AcceptanceRequired => (is => 'ro', isa => Bool);
  has AvailabilityZones => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has BaseEndpointDnsNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ManagesVpcEndpoints => (is => 'ro', isa => Bool);
  has NetworkLoadBalancerArns => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has PrivateDnsName => (is => 'ro', isa => Str);
  has ServiceId => (is => 'ro', isa => Str);
  has ServiceName => (is => 'ro', isa => Str);
  has ServiceState => (is => 'ro', isa => Str);
  has ServiceType => (is => 'ro', isa => ArrayRef[EC2_ServiceTypeDetail]);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'NetworkLoadBalancerArns' => {
                                              'type' => 'ArrayRef[Str|Undef]'
                                            },
               'BaseEndpointDnsNames' => {
                                           'type' => 'ArrayRef[Str|Undef]'
                                         },
               'ServiceType' => {
                                  'class' => 'Paws::EC2::ServiceTypeDetail',
                                  'type' => 'ArrayRef[EC2_ServiceTypeDetail]'
                                },
               'ServiceName' => {
                                  'type' => 'Str'
                                },
               'AvailabilityZones' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'ServiceState' => {
                                   'type' => 'Str'
                                 },
               'ServiceId' => {
                                'type' => 'Str'
                              },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'PrivateDnsName' => {
                                     'type' => 'Str'
                                   },
               'AcceptanceRequired' => {
                                         'type' => 'Bool'
                                       },
               'ManagesVpcEndpoints' => {
                                          'type' => 'Bool'
                                        }
             },
  'NameInRequest' => {
                       'NetworkLoadBalancerArns' => 'networkLoadBalancerArnSet',
                       'BaseEndpointDnsNames' => 'baseEndpointDnsNameSet',
                       'ServiceType' => 'serviceType',
                       'ServiceName' => 'serviceName',
                       'AvailabilityZones' => 'availabilityZoneSet',
                       'ServiceState' => 'serviceState',
                       'ServiceId' => 'serviceId',
                       'Tags' => 'tagSet',
                       'PrivateDnsName' => 'privateDnsName',
                       'AcceptanceRequired' => 'acceptanceRequired',
                       'ManagesVpcEndpoints' => 'managesVpcEndpoints'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ServiceConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ServiceConfiguration object:

  $service_obj->Method(Att1 => { AcceptanceRequired => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ServiceConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AcceptanceRequired

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AcceptanceRequired => Bool

  Indicates whether requests from other AWS accounts to create an
endpoint to the service must first be accepted.


=head2 AvailabilityZones => ArrayRef[Str|Undef]

  In the Availability Zones in which the service is available.


=head2 BaseEndpointDnsNames => ArrayRef[Str|Undef]

  The DNS names for the service.


=head2 ManagesVpcEndpoints => Bool

  Indicates whether the service manages it's VPC endpoints. Management of
the service VPC endpoints using the VPC endpoint API is restricted.


=head2 NetworkLoadBalancerArns => ArrayRef[Str|Undef]

  The Amazon Resource Names (ARNs) of the Network Load Balancers for the
service.


=head2 PrivateDnsName => Str

  The private DNS name for the service.


=head2 ServiceId => Str

  The ID of the service.


=head2 ServiceName => Str

  The name of the service.


=head2 ServiceState => Str

  The service state.


=head2 ServiceType => ArrayRef[EC2_ServiceTypeDetail]

  The type of service.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
