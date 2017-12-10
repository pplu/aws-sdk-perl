package Paws::WAF::SampledHTTPRequest;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has Request => (is => 'ro', isa => 'Paws::WAF::HTTPRequest', required => 1);
  has RuleWithinRuleGroup => (is => 'ro', isa => 'Str');
  has Timestamp => (is => 'ro', isa => 'Str');
  has Weight => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::SampledHTTPRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::SampledHTTPRequest object:

  $service_obj->Method(Att1 => { Action => $value, ..., Weight => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::SampledHTTPRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

The response from a GetSampledRequests request includes a
C<SampledHTTPRequests> complex type that appears as C<SampledRequests>
in the response syntax. C<SampledHTTPRequests> contains one
C<SampledHTTPRequest> object for each web request that is returned by
C<GetSampledRequests>.

=head1 ATTRIBUTES


=head2 Action => Str

  The action for the C<Rule> that the request matched: C<ALLOW>,
C<BLOCK>, or C<COUNT>.


=head2 B<REQUIRED> Request => L<Paws::WAF::HTTPRequest>

  A complex type that contains detailed information about the request.


=head2 RuleWithinRuleGroup => Str

  This value is returned if the C<GetSampledRequests> request specifies
the ID of a C<RuleGroup> rather than the ID of an individual rule.
C<RuleWithinRuleGroup> is the rule within the specified C<RuleGroup>
that matched the request listed in the response.


=head2 Timestamp => Str

  The time at which AWS WAF received the request from your AWS resource,
in Unix time format (in seconds).


=head2 B<REQUIRED> Weight => Int

  A value that indicates how one result in the response relates
proportionally to other results in the response. A result that has a
weight of C<2> represents roughly twice as many CloudFront web requests
as a result that has a weight of C<1>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

