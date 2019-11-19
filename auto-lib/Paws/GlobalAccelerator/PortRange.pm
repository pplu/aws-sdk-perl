# Generated from default/object.tt
package Paws::GlobalAccelerator::PortRange;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::GlobalAccelerator::Types qw//;
  has FromPort => (is => 'ro', isa => Int);
  has ToPort => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FromPort' => {
                               'type' => 'Int'
                             },
               'ToPort' => {
                             'type' => 'Int'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::PortRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GlobalAccelerator::PortRange object:

  $service_obj->Method(Att1 => { FromPort => $value, ..., ToPort => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GlobalAccelerator::PortRange object:

  $result = $service_obj->Method(...);
  $result->Att1->FromPort

=head1 DESCRIPTION

A complex type for a range of ports for a listener.

=head1 ATTRIBUTES


=head2 FromPort => Int

  The first port in the range of ports, inclusive.


=head2 ToPort => Int

  The last port in the range of ports, inclusive.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

