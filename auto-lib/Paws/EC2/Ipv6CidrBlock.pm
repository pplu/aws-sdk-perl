package Paws::EC2::Ipv6CidrBlock;
  use Moose;
  has Ipv6CidrBlock => (is => 'ro', isa => 'Str', request_name => 'ipv6CidrBlock', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Ipv6CidrBlock

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Ipv6CidrBlock object:

  $service_obj->Method(Att1 => { Ipv6CidrBlock => $value, ..., Ipv6CidrBlock => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Ipv6CidrBlock object:

  $result = $service_obj->Method(...);
  $result->Att1->Ipv6CidrBlock

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Ipv6CidrBlock => Str

  The IPv6 CIDR block.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
