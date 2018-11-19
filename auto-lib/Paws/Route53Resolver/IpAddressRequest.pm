package Paws::Route53Resolver::IpAddressRequest;
  use Moose;
  has Ip => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::IpAddressRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53Resolver::IpAddressRequest object:

  $service_obj->Method(Att1 => { Ip => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53Resolver::IpAddressRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Ip

=head1 DESCRIPTION

In an CreateResolverEndpoint request, a subnet and IP address that you
want to use for DNS queries.

=head1 ATTRIBUTES


=head2 Ip => Str

  The IP address that you want to use for DNS queries.


=head2 B<REQUIRED> SubnetId => Str

  The subnet that contains the IP address.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

