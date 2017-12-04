package Paws::WAF::GeoMatchSetSummary;
  use Moose;
  has GeoMatchSetId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GeoMatchSetSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::GeoMatchSetSummary object:

  $service_obj->Method(Att1 => { GeoMatchSetId => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::GeoMatchSetSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->GeoMatchSetId

=head1 DESCRIPTION

Contains the identifier and the name of the C<GeoMatchSet>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GeoMatchSetId => Str

  The C<GeoMatchSetId> for an GeoMatchSet. You can use C<GeoMatchSetId>
in a GetGeoMatchSet request to get detailed information about an
GeoMatchSet.


=head2 B<REQUIRED> Name => Str

  A friendly name or description of the GeoMatchSet. You can't change the
name of an C<GeoMatchSet> after you create it.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

