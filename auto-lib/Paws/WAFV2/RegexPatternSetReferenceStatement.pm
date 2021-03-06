# Generated by default/object.tt
package Paws::WAFV2::RegexPatternSetReferenceStatement;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str', required => 1);
  has FieldToMatch => (is => 'ro', isa => 'Paws::WAFV2::FieldToMatch', required => 1);
  has TextTransformations => (is => 'ro', isa => 'ArrayRef[Paws::WAFV2::TextTransformation]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::RegexPatternSetReferenceStatement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFV2::RegexPatternSetReferenceStatement object:

  $service_obj->Method(Att1 => { ARN => $value, ..., TextTransformations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFV2::RegexPatternSetReferenceStatement object:

  $result = $service_obj->Method(...);
  $result->Att1->ARN

=head1 DESCRIPTION

A rule statement used to search web request components for matches with
regular expressions. To use this, create a RegexPatternSet that
specifies the expressions that you want to detect, then use the ARN of
that set in this statement. A web request matches the pattern set rule
statement if the request component matches any of the patterns in the
set. To create a regex pattern set, see CreateRegexPatternSet.

Each regex pattern set rule statement references a regex pattern set.
You create and maintain the set independent of your rules. This allows
you to use the single set in multiple rules. When you update the
referenced set, WAF automatically updates all rules that reference it.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ARN => Str

The Amazon Resource Name (ARN) of the RegexPatternSet that this
statement references.


=head2 B<REQUIRED> FieldToMatch => L<Paws::WAFV2::FieldToMatch>

The part of a web request that you want WAF to inspect. For more
information, see FieldToMatch.


=head2 B<REQUIRED> TextTransformations => ArrayRef[L<Paws::WAFV2::TextTransformation>]

Text transformations eliminate some of the unusual formatting that
attackers use in web requests in an effort to bypass detection. If you
specify one or more transformations in a rule statement, WAF performs
all transformations on the content of the request component identified
by C<FieldToMatch>, starting from the lowest priority setting, before
inspecting the content for a match.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

