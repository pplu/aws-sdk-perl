package Paws::WAFv2::SqliMatchStatement;
  use Moose;
  has FieldToMatch => (is => 'ro', isa => 'Paws::WAFv2::FieldToMatch', required => 1);
  has TextTransformations => (is => 'ro', isa => 'ArrayRef[Paws::WAFv2::TextTransformation]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::SqliMatchStatement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::SqliMatchStatement object:

  $service_obj->Method(Att1 => { FieldToMatch => $value, ..., TextTransformations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::SqliMatchStatement object:

  $result = $service_obj->Method(...);
  $result->Att1->FieldToMatch

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

Attackers sometimes insert malicious SQL code into web requests in an
effort to extract data from your database. To allow or block web
requests that appear to contain malicious SQL code, create one or more
SQL injection match conditions. An SQL injection match condition
identifies the part of web requests, such as the URI or the query
string, that you want AWS WAF to inspect. Later in the process, when
you create a web ACL, you specify whether to allow or block requests
that appear to contain malicious SQL code.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FieldToMatch => L<Paws::WAFv2::FieldToMatch>

  The part of a web request that you want AWS WAF to inspect. For more
information, see FieldToMatch.


=head2 B<REQUIRED> TextTransformations => ArrayRef[L<Paws::WAFv2::TextTransformation>]

  Text transformations eliminate some of the unusual formatting that
attackers use in web requests in an effort to bypass detection. If you
specify one or more transformations in a rule statement, AWS WAF
performs all transformations on the content identified by
C<FieldToMatch>, starting from the lowest priority setting, before
inspecting the content for a match.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

