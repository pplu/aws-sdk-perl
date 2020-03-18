package Paws::WAFv2::SampledHTTPRequest;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has Request => (is => 'ro', isa => 'Paws::WAFv2::HTTPRequest', required => 1);
  has RuleNameWithinRuleGroup => (is => 'ro', isa => 'Str');
  has Timestamp => (is => 'ro', isa => 'Str');
  has Weight => (is => 'ro', isa => 'Int', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::SampledHTTPRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::SampledHTTPRequest object:

  $service_obj->Method(Att1 => { Action => $value, ..., Weight => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::SampledHTTPRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

Represents a single sampled web request. The response from
GetSampledRequests includes a C<SampledHTTPRequests> complex type that
appears as C<SampledRequests> in the response syntax.
C<SampledHTTPRequests> contains an array of C<SampledHTTPRequest>
objects.

=head1 ATTRIBUTES


=head2 Action => Str

  The action for the C<Rule> that the request matched: C<ALLOW>,
C<BLOCK>, or C<COUNT>.


=head2 B<REQUIRED> Request => L<Paws::WAFv2::HTTPRequest>

  A complex type that contains detailed information about the request.


=head2 RuleNameWithinRuleGroup => Str

  The name of the C<Rule> that the request matched. For managed rule
groups, the format for this name is C<E<lt>vendor
nameE<gt>#E<lt>managed rule group nameE<gt>#E<lt>rule nameE<gt>>. For
your own rule groups, the format for this name is C<E<lt>rule group
nameE<gt>#E<lt>rule nameE<gt>>. If the rule is not in a rule group, the
format is C<E<lt>rule nameE<gt>>.


=head2 Timestamp => Str

  The time at which AWS WAF received the request from your AWS resource,
in Unix time format (in seconds).


=head2 B<REQUIRED> Weight => Int

  A value that indicates how one result in the response relates
proportionally to other results in the response. For example, a result
that has a weight of C<2> represents roughly twice as many web requests
as a result that has a weight of C<1>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

