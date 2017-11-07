package Paws::WAF::GeoMatchSet;
  use Moose;
  has GeoMatchConstraints => (is => 'ro', isa => 'ArrayRef[Paws::WAF::GeoMatchConstraint]', required => 1);
  has GeoMatchSetId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GeoMatchSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::GeoMatchSet object:

  $service_obj->Method(Att1 => { GeoMatchConstraints => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::GeoMatchSet object:

  $result = $service_obj->Method(...);
  $result->Att1->GeoMatchConstraints

=head1 DESCRIPTION

Contains one or more countries that AWS WAF will search for.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GeoMatchConstraints => ArrayRef[L<Paws::WAF::GeoMatchConstraint>]

  An array of GeoMatchConstraint objects, which contain the country that
you want AWS WAF to search for.


=head2 B<REQUIRED> GeoMatchSetId => Str

  The C<GeoMatchSetId> for an C<GeoMatchSet>. You use C<GeoMatchSetId> to
get information about a C<GeoMatchSet> (see GeoMatchSet), update a
C<GeoMatchSet> (see UpdateGeoMatchSet), insert a C<GeoMatchSet> into a
C<Rule> or delete one from a C<Rule> (see UpdateRule), and delete a
C<GeoMatchSet> from AWS WAF (see DeleteGeoMatchSet).

C<GeoMatchSetId> is returned by CreateGeoMatchSet and by
ListGeoMatchSets.


=head2 Name => Str

  A friendly name or description of the GeoMatchSet. You can't change the
name of an C<GeoMatchSet> after you create it.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

