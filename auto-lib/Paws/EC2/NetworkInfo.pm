package Paws::EC2::NetworkInfo;
  use Moose;
  has EnaSupport => (is => 'ro', isa => 'Str', request_name => 'enaSupport', traits => ['NameInRequest']);
  has Ipv4AddressesPerInterface => (is => 'ro', isa => 'Int', request_name => 'ipv4AddressesPerInterface', traits => ['NameInRequest']);
  has Ipv6AddressesPerInterface => (is => 'ro', isa => 'Int', request_name => 'ipv6AddressesPerInterface', traits => ['NameInRequest']);
  has Ipv6Supported => (is => 'ro', isa => 'Bool', request_name => 'ipv6Supported', traits => ['NameInRequest']);
  has MaximumNetworkInterfaces => (is => 'ro', isa => 'Int', request_name => 'maximumNetworkInterfaces', traits => ['NameInRequest']);
  has NetworkPerformance => (is => 'ro', isa => 'Str', request_name => 'networkPerformance', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NetworkInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NetworkInfo object:

  $service_obj->Method(Att1 => { EnaSupport => $value, ..., NetworkPerformance => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NetworkInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->EnaSupport

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 EnaSupport => Str

  Indicates whether Elastic Network Adapter (ENA) is supported.


=head2 Ipv4AddressesPerInterface => Int

  The maximum number of IPv4 addresses per network interface.


=head2 Ipv6AddressesPerInterface => Int

  The maximum number of IPv6 addresses per network interface.


=head2 Ipv6Supported => Bool

  Indicates whether IPv6 is supported.


=head2 MaximumNetworkInterfaces => Int

  The maximum number of network interfaces for the instance type.


=head2 NetworkPerformance => Str

  Describes the network performance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
