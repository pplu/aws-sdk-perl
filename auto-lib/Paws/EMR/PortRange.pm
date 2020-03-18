package Paws::EMR::PortRange;
  use Moose;
  has MaxRange => (is => 'ro', isa => 'Int');
  has MinRange => (is => 'ro', isa => 'Int', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::PortRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::PortRange object:

  $service_obj->Method(Att1 => { MaxRange => $value, ..., MinRange => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::PortRange object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxRange

=head1 DESCRIPTION

A list of port ranges that are permitted to allow inbound traffic from
all public IP addresses. To specify a single port, use the same value
for C<MinRange> and C<MaxRange>.

=head1 ATTRIBUTES


=head2 MaxRange => Int

  The smallest port number in a specified range of port numbers.


=head2 B<REQUIRED> MinRange => Int

  The smallest port number in a specified range of port numbers.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

