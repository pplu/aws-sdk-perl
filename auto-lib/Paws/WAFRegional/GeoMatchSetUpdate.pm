# Generated from default/object.tt
package Paws::WAFRegional::GeoMatchSetUpdate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_GeoMatchConstraint/;
  has Action => (is => 'ro', isa => Str, required => 1);
  has GeoMatchConstraint => (is => 'ro', isa => WAFRegional_GeoMatchConstraint, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'GeoMatchConstraint' => 1,
                    'Action' => 1
                  },
  'types' => {
               'Action' => {
                             'type' => 'Str'
                           },
               'GeoMatchConstraint' => {
                                         'type' => 'WAFRegional_GeoMatchConstraint',
                                         'class' => 'Paws::WAFRegional::GeoMatchConstraint'
                                       }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GeoMatchSetUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::GeoMatchSetUpdate object:

  $service_obj->Method(Att1 => { Action => $value, ..., GeoMatchConstraint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::GeoMatchSetUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Specifies the type of update to perform to an GeoMatchSet with
UpdateGeoMatchSet.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

  Specifies whether to insert or delete a country with UpdateGeoMatchSet.


=head2 B<REQUIRED> GeoMatchConstraint => WAFRegional_GeoMatchConstraint

  The country from which web requests originate that you want AWS WAF to
search for.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

