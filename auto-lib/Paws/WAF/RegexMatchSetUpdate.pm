package Paws::WAF::RegexMatchSetUpdate;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has RegexMatchTuple => (is => 'ro', isa => 'Paws::WAF::RegexMatchTuple', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::RegexMatchSetUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::RegexMatchSetUpdate object:

  $service_obj->Method(Att1 => { Action => $value, ..., RegexMatchTuple => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::RegexMatchSetUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

In an UpdateRegexMatchSet request, C<RegexMatchSetUpdate> specifies
whether to insert or delete a RegexMatchTuple and includes the settings
for the C<RegexMatchTuple>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

  Specifies whether to insert or delete a RegexMatchTuple.


=head2 B<REQUIRED> RegexMatchTuple => L<Paws::WAF::RegexMatchTuple>

  Information about the part of a web request that you want AWS WAF to
inspect and the identifier of the regular expression (regex) pattern
that you want AWS WAF to search for. If you specify C<DELETE> for the
value of C<Action>, the C<RegexMatchTuple> values must exactly match
the values in the C<RegexMatchTuple> that you want to delete from the
C<RegexMatchSet>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

