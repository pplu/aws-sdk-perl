package Paws::WAF::WafAction;
  use Moose;
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::WafAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::WafAction object:

  $service_obj->Method(Att1 => { Type => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::WafAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 DESCRIPTION

For the action that is associated with a rule in a C<WebACL>, specifies
the action that you want AWS WAF to perform when a web request matches
all of the conditions in a rule. For the default action in a C<WebACL>,
specifies the action that you want AWS WAF to take when a web request
doesn't match all of the conditions in any of the rules in a C<WebACL>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Type => Str

  Specifies how you want AWS WAF to respond to requests that match the
settings in a C<Rule>. Valid settings include the following:

=over

=item *

C<ALLOW>: AWS WAF allows requests

=item *

C<BLOCK>: AWS WAF blocks requests

=item *

C<COUNT>: AWS WAF increments a counter of the requests that match all
of the conditions in the rule. AWS WAF then continues to inspect the
web request based on the remaining rules in the web ACL. You can't
specify C<COUNT> for the default action for a C<WebACL>.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

