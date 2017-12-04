package Paws::ELB::ConnectionDraining;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has Timeout => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::ConnectionDraining

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELB::ConnectionDraining object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., Timeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELB::ConnectionDraining object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

Information about the C<ConnectionDraining> attribute.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Enabled => Bool

  Specifies whether connection draining is enabled for the load balancer.


=head2 Timeout => Int

  The maximum time, in seconds, to keep the existing connections open
before deregistering the instances.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

