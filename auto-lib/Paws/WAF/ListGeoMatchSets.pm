
package Paws::WAF::ListGeoMatchSets;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextMarker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGeoMatchSets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::ListGeoMatchSetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::ListGeoMatchSets - Arguments for method ListGeoMatchSets on Paws::WAF

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGeoMatchSets on the 
AWS WAF service. Use the attributes of this class
as arguments to method ListGeoMatchSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGeoMatchSets.

As an example:

  $service_obj->ListGeoMatchSets(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Limit => Int

Specifies the number of C<GeoMatchSet> objects that you want AWS WAF to
return for this request. If you have more C<GeoMatchSet> objects than
the number you specify for C<Limit>, the response includes a
C<NextMarker> value that you can use to get another batch of
C<GeoMatchSet> objects.



=head2 NextMarker => Str

If you specify a value for C<Limit> and you have more C<GeoMatchSet>s
than the value of C<Limit>, AWS WAF returns a C<NextMarker> value in
the response that allows you to list another group of C<GeoMatchSet>
objects. For the second and subsequent C<ListGeoMatchSets> requests,
specify the value of C<NextMarker> from the previous response to get
information about another batch of C<GeoMatchSet> objects.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGeoMatchSets in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

