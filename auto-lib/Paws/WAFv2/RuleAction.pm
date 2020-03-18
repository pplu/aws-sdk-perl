package Paws::WAFv2::RuleAction;
  use Moose;
  has Allow => (is => 'ro', isa => 'Paws::WAFv2::AllowAction');
  has Block => (is => 'ro', isa => 'Paws::WAFv2::BlockAction');
  has Count => (is => 'ro', isa => 'Paws::WAFv2::CountAction');

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::RuleAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::RuleAction object:

  $service_obj->Method(Att1 => { Allow => $value, ..., Count => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::RuleAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Allow

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

The action that AWS WAF should take on a web request when it matches a
rule's statement. Settings at the web ACL level can override the rule
action setting.

=head1 ATTRIBUTES


=head2 Allow => L<Paws::WAFv2::AllowAction>

  Instructs AWS WAF to allow the web request.


=head2 Block => L<Paws::WAFv2::BlockAction>

  Instructs AWS WAF to block the web request.


=head2 Count => L<Paws::WAFv2::CountAction>

  Instructs AWS WAF to count the web request and allow it.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

