package Paws::EC2::ServiceDetail;
  use Moose;
  has AcceptanceRequired => (is => 'ro', isa => 'Bool', request_name => 'acceptanceRequired', traits => ['NameInRequest']);
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'availabilityZoneSet', traits => ['NameInRequest']);
  has BaseEndpointDnsNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'baseEndpointDnsNameSet', traits => ['NameInRequest']);
  has Owner => (is => 'ro', isa => 'Str', request_name => 'owner', traits => ['NameInRequest']);
  has PrivateDnsName => (is => 'ro', isa => 'Str', request_name => 'privateDnsName', traits => ['NameInRequest']);
  has ServiceName => (is => 'ro', isa => 'Str', request_name => 'serviceName', traits => ['NameInRequest']);
  has ServiceType => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ServiceTypeDetail]', request_name => 'serviceType', traits => ['NameInRequest']);
  has VpcEndpointPolicySupported => (is => 'ro', isa => 'Bool', request_name => 'vpcEndpointPolicySupported', traits => ['NameInRequest']);
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


=head2 Owner => Str

  The AWS account ID of the service owner.


=head2 PrivateDnsName => Str

  The private DNS name for the service.


=head2 ServiceName => Str

  The Amazon Resource Name (ARN) of the service.


=head2 ServiceType => ArrayRef[L<Paws::EC2::ServiceTypeDetail>]

  The type of service.


=head2 VpcEndpointPolicySupported => Bool

  Indicates whether the service supports endpoint policies.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
