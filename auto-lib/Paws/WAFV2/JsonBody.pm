# Generated by default/object.tt
package Paws::WAFV2::JsonBody;
  use Moose;
  has InvalidFallbackBehavior => (is => 'ro', isa => 'Str');
  has MatchPattern => (is => 'ro', isa => 'Paws::WAFV2::JsonMatchPattern', required => 1);
  has MatchScope => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::JsonBody

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFV2::JsonBody object:

  $service_obj->Method(Att1 => { InvalidFallbackBehavior => $value, ..., MatchScope => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFV2::JsonBody object:

  $result = $service_obj->Method(...);
  $result->Att1->InvalidFallbackBehavior

=head1 DESCRIPTION

The body of a web request, inspected as JSON. The body immediately
follows the request headers. This is used in the FieldToMatch
specification.

Use the specifications in this object to indicate which parts of the
JSON body to inspect using the rule's inspection criteria. WAF inspects
only the parts of the JSON that result from the matches that you
indicate.

=head1 ATTRIBUTES


=head2 InvalidFallbackBehavior => Str

What WAF should do if it fails to completely parse the JSON body. The
options are the following:

=over

=item *

C<EVALUATE_AS_STRING> - Inspect the body as plain text. WAF applies the
text transformations and inspection criteria that you defined for the
JSON inspection to the body text string.

=item *

C<MATCH> - Treat the web request as matching the rule statement. WAF
applies the rule action to the request.

=item *

C<NO_MATCH> - Treat the web request as not matching the rule statement.

=back

If you don't provide this setting, WAF parses and evaluates the content
only up to the first parsing failure that it encounters.

WAF does its best to parse the entire JSON body, but might be forced to
stop for reasons such as characters that aren't valid, duplicate keys,
truncation, and any content whose root node isn't an object or an
array.

WAF parses the JSON in the following examples as two valid key, value
pairs:

=over

=item *

Missing comma: C<{"key1":"value1""key2":"value2"}>

=item *

Missing colon: C<{"key1":"value1","key2""value2"}>

=item *

Extra colons: C<{"key1"::"value1","key2""value2"}>

=back



=head2 B<REQUIRED> MatchPattern => L<Paws::WAFV2::JsonMatchPattern>

The patterns to look for in the JSON body. WAF inspects the results of
these pattern matches against the rule inspection criteria.


=head2 B<REQUIRED> MatchScope => Str

The parts of the JSON to match against using the C<MatchPattern>. If
you specify C<All>, WAF matches against keys and values.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

