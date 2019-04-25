package Paws::Route53Resolver::TargetAddress;
  use Moose;
  has Ip => (is => 'ro', isa => 'Str', required => 1);
  has Port => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::TargetAddress

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53Resolver::TargetAddress object:

  $service_obj->Method(Att1 => { Ip => $value, ..., Port => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53Resolver::TargetAddress object:

  $result = $service_obj->Method(...);
  $result->Att1->Ip

=head1 DESCRIPTION

In a CreateResolverRule request, an array of the IPs that you want to
forward DNS queries to.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Ip => Str

  One IP address that you want to forward DNS queries to. You can specify
only IPv4 addresses.


=head2 Port => Int

  The port at C<Ip> that you want to forward DNS queries to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

