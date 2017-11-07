package Paws::WAF::GeoMatchConstraint;
  use Moose;
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GeoMatchConstraint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::GeoMatchConstraint object:

  $service_obj->Method(Att1 => { Type => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::GeoMatchConstraint object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 DESCRIPTION

The country from which web requests originate that you want AWS WAF to
search for.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Type => Str

  The type of geographical area you want AWS WAF to search for. Currently
C<Country> is the only valid value.


=head2 B<REQUIRED> Value => Str

  The country that you want AWS WAF to search for.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

