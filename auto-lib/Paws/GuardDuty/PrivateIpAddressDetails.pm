package Paws::GuardDuty::PrivateIpAddressDetails;
  use Moose;
  has PrivateDnsName => (is => 'ro', isa => 'Str', request_name => 'privateDnsName', traits => ['NameInRequest']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', request_name => 'privateIpAddress', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::PrivateIpAddressDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::PrivateIpAddressDetails object:

  $service_obj->Method(Att1 => { PrivateDnsName => $value, ..., PrivateIpAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::PrivateIpAddressDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->PrivateDnsName

=head1 DESCRIPTION

Other private IP address information of the EC2 instance.

=head1 ATTRIBUTES


=head2 PrivateDnsName => Str

  Private DNS name of the EC2 instance.


=head2 PrivateIpAddress => Str

  Private IP address of the EC2 instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

