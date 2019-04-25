package Paws::Inspector::PrivateIp;
  use Moose;
  has PrivateDnsName => (is => 'ro', isa => 'Str', request_name => 'privateDnsName', traits => ['NameInRequest']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', request_name => 'privateIpAddress', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::PrivateIp

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::PrivateIp object:

  $service_obj->Method(Att1 => { PrivateDnsName => $value, ..., PrivateIpAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::PrivateIp object:

  $result = $service_obj->Method(...);
  $result->Att1->PrivateDnsName

=head1 DESCRIPTION

Contains information about a private IP address associated with a
network interface. This data type is used as a response element in the
DescribeFindings action.

=head1 ATTRIBUTES


=head2 PrivateDnsName => Str

  The DNS name of the private IP address.


=head2 PrivateIpAddress => Str

  The full IP address of the network inteface.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

