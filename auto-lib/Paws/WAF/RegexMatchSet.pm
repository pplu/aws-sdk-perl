# Generated by default/object.tt
package Paws::WAF::RegexMatchSet;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has RegexMatchSetId => (is => 'ro', isa => 'Str');
  has RegexMatchTuples => (is => 'ro', isa => 'ArrayRef[Paws::WAF::RegexMatchTuple]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::RegexMatchSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::RegexMatchSet object:

  $service_obj->Method(Att1 => { Name => $value, ..., RegexMatchTuples => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::RegexMatchSet object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

This is B<AWS WAF Classic> documentation. For more information, see AWS
WAF Classic
(https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
in the developer guide.

B<For the latest version of AWS WAF>, use the AWS WAFV2 API and see the
AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
With the latest version, AWS WAF has a single set of endpoints for
regional and global use.

In a GetRegexMatchSet request, C<RegexMatchSet> is a complex type that
contains the C<RegexMatchSetId> and C<Name> of a C<RegexMatchSet>, and
the values that you specified when you updated the C<RegexMatchSet>.

The values are contained in a C<RegexMatchTuple> object, which specify
the parts of web requests that you want AWS WAF to inspect and the
values that you want AWS WAF to search for. If a C<RegexMatchSet>
contains more than one C<RegexMatchTuple> object, a request needs to
match the settings in only one C<ByteMatchTuple> to be considered a
match.

=head1 ATTRIBUTES


=head2 Name => Str

A friendly name or description of the RegexMatchSet. You can't change
C<Name> after you create a C<RegexMatchSet>.


=head2 RegexMatchSetId => Str

The C<RegexMatchSetId> for a C<RegexMatchSet>. You use
C<RegexMatchSetId> to get information about a C<RegexMatchSet> (see
GetRegexMatchSet), update a C<RegexMatchSet> (see UpdateRegexMatchSet),
insert a C<RegexMatchSet> into a C<Rule> or delete one from a C<Rule>
(see UpdateRule), and delete a C<RegexMatchSet> from AWS WAF (see
DeleteRegexMatchSet).

C<RegexMatchSetId> is returned by CreateRegexMatchSet and by
ListRegexMatchSets.


=head2 RegexMatchTuples => ArrayRef[L<Paws::WAF::RegexMatchTuple>]

Contains an array of RegexMatchTuple objects. Each C<RegexMatchTuple>
object contains:

=over

=item *

The part of a web request that you want AWS WAF to inspect, such as a
query string or the value of the C<User-Agent> header.

=item *

The identifier of the pattern (a regular expression) that you want AWS
WAF to look for. For more information, see RegexPatternSet.

=item *

Whether to perform any conversions on the request, such as converting
it to lowercase, before inspecting it for the specified string.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

