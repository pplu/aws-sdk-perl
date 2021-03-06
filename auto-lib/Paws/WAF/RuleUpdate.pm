# Generated by default/object.tt
package Paws::WAF::RuleUpdate;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has Predicate => (is => 'ro', isa => 'Paws::WAF::Predicate', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::RuleUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::RuleUpdate object:

  $service_obj->Method(Att1 => { Action => $value, ..., Predicate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::RuleUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

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

Specifies a C<Predicate> (such as an C<IPSet>) and indicates whether
you want to add it to a C<Rule> or delete it from a C<Rule>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

Specify C<INSERT> to add a C<Predicate> to a C<Rule>. Use C<DELETE> to
remove a C<Predicate> from a C<Rule>.


=head2 B<REQUIRED> Predicate => L<Paws::WAF::Predicate>

The ID of the C<Predicate> (such as an C<IPSet>) that you want to add
to a C<Rule>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

