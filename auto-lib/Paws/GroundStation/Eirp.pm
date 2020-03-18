package Paws::GroundStation::Eirp;
  use Moose;
  has Units => (is => 'ro', isa => 'Str', request_name => 'units', traits => ['NameInRequest'], required => 1);
  has Value => (is => 'ro', isa => 'Num', request_name => 'value', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::Eirp

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::Eirp object:

  $service_obj->Method(Att1 => { Units => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::Eirp object:

  $result = $service_obj->Method(...);
  $result->Att1->Units

=head1 DESCRIPTION

Object that represents EIRP.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Units => Str

  Units of an EIRP.


=head2 B<REQUIRED> Value => Num

  Value of an EIRP.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

