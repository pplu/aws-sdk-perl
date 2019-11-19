package Paws::EC2::ServiceDetail;
  use Moo;  use Types::Standard qw/Bool Str Undef ArrayRef/;
  use Paws::EC2::Types qw/EC2_ServiceTypeDetail EC2_Tag/;
  has AcceptanceRequired => (is => 'ro', isa => Bool);
  has AvailabilityZones => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has BaseEndpointDnsNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ManagesVpcEndpoints => (is => 'ro', isa => Bool);
  has Owner => (is => 'ro', isa => Str);
  has PrivateDnsName => (is => 'ro', isa => Str);
  has ServiceId => (is => 'ro', isa => Str);
  has ServiceName => (is => 'ro', isa => Str);
  has ServiceType => (is => 'ro', isa => ArrayRef[EC2_ServiceTypeDetail]);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has VpcEndpointPolicySupported => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BaseEndpointDnsNames' => {
                                           'type' => 'ArrayRef[Str|Undef]'
                                         },
               'AcceptanceRequired' => {
                                         'type' => 'Bool'
                                       },
               'VpcEndpointPolicySupported' => {
                                                 'type' => 'Bool'
                                               },
               'PrivateDnsName' => {
                                     'type' => 'Str'
                                   },
               'ServiceId' => {
                                'type' => 'Str'
                              },
               'ServiceType' => {
                                  'class' => 'Paws::EC2::ServiceTypeDetail',
                                  'type' => 'ArrayRef[EC2_ServiceTypeDetail]'
                                },
               'Owner' => {
                            'type' => 'Str'
                          },
               'ManagesVpcEndpoints' => {
                                          'type' => 'Bool'
                                        },
               'AvailabilityZones' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'Tags' => {
                           'type' => 'ArrayRef[EC2_Tag]',
                           'class' => 'Paws::EC2::Tag'
                         },
               'ServiceName' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'VpcEndpointPolicySupported' => 'vpcEndpointPolicySupported',
                       'BaseEndpointDnsNames' => 'baseEndpointDnsNameSet',
                       'AcceptanceRequired' => 'acceptanceRequired',
                       'ServiceType' => 'serviceType',
                       'ServiceId' => 'serviceId',
                       'ManagesVpcEndpoints' => 'managesVpcEndpoints',
                       'Owner' => 'owner',
                       'PrivateDnsName' => 'privateDnsName',
                       'ServiceName' => 'serviceName',
                       'AvailabilityZones' => 'availabilityZoneSet',
                       'Tags' => 'tagSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ServiceDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ServiceDetail object:

  $service_obj->Method(Att1 => { AcceptanceRequired => $value, ..., VpcEndpointPolicySupported => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ServiceDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->AcceptanceRequired

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AcceptanceRequired => Bool

  Indicates whether VPC endpoint connection requests to the service must
be accepted by the service owner.


=head2 AvailabilityZones => ArrayRef[Str|Undef]

  The Availability Zones in which the service is available.


=head2 BaseEndpointDnsNames => ArrayRef[Str|Undef]

  The DNS names for the service.


=head2 ManagesVpcEndpoints => Bool

  Indicates whether the service manages it's VPC endpoints. Management of
the service VPC endpoints using the VPC endpoint API is restricted.


=head2 Owner => Str

  The AWS account ID of the service owner.


=head2 PrivateDnsName => Str

  The private DNS name for the service.


=head2 ServiceId => Str

  The ID of the endpoint service.


=head2 ServiceName => Str

  The Amazon Resource Name (ARN) of the service.


=head2 ServiceType => ArrayRef[EC2_ServiceTypeDetail]

  The type of service.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the service.


=head2 VpcEndpointPolicySupported => Bool

  Indicates whether the service supports endpoint policies.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
