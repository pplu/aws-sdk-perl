
package Paws::WAFRegional::UpdateGeoMatchSet;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has GeoMatchSetId => (is => 'ro', isa => 'Str', required => 1);
  has Updates => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::GeoMatchSetUpdate]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGeoMatchSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::UpdateGeoMatchSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::UpdateGeoMatchSet - Arguments for method UpdateGeoMatchSet on Paws::WAFRegional

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGeoMatchSet on the 
AWS WAF Regional service. Use the attributes of this class
as arguments to method UpdateGeoMatchSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGeoMatchSet.

As an example:

  $service_obj->UpdateGeoMatchSet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> GeoMatchSetId => Str

The C<GeoMatchSetId> of the GeoMatchSet that you want to update.
C<GeoMatchSetId> is returned by CreateGeoMatchSet and by
ListGeoMatchSets.



=head2 B<REQUIRED> Updates => ArrayRef[L<Paws::WAFRegional::GeoMatchSetUpdate>]

An array of C<GeoMatchSetUpdate> objects that you want to insert into
or delete from an GeoMatchSet. For more information, see the applicable
data types:

=over

=item *

GeoMatchSetUpdate: Contains C<Action> and C<GeoMatchConstraint>

=item *

GeoMatchConstraint: Contains C<Type> and C<Value>

You can have only one C<Type> and C<Value> per C<GeoMatchConstraint>.
To add multiple countries, include multiple C<GeoMatchSetUpdate>
objects in your request.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGeoMatchSet in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

