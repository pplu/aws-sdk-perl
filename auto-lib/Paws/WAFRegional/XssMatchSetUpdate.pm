# Generated from default/object.tt
package Paws::WAFRegional::XssMatchSetUpdate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_XssMatchTuple/;
  has Action => (is => 'ro', isa => Str, required => 1);
  has XssMatchTuple => (is => 'ro', isa => WAFRegional_XssMatchTuple, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Action' => {
                             'type' => 'Str'
                           },
               'XssMatchTuple' => {
                                    'class' => 'Paws::WAFRegional::XssMatchTuple',
                                    'type' => 'WAFRegional_XssMatchTuple'
                                  }
             },
  'IsRequired' => {
                    'XssMatchTuple' => 1,
                    'Action' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::XssMatchSetUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::XssMatchSetUpdate object:

  $service_obj->Method(Att1 => { Action => $value, ..., XssMatchTuple => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::XssMatchSetUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Specifies the part of a web request that you want to inspect for
cross-site scripting attacks and indicates whether you want to add the
specification to an XssMatchSet or delete it from an C<XssMatchSet>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

  Specify C<INSERT> to add an XssMatchSetUpdate to an XssMatchSet. Use
C<DELETE> to remove an C<XssMatchSetUpdate> from an C<XssMatchSet>.


=head2 B<REQUIRED> XssMatchTuple => WAFRegional_XssMatchTuple

  Specifies the part of a web request that you want AWS WAF to inspect
for cross-site scripting attacks and, if you want AWS WAF to inspect a
header, the name of the header.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

