# Generated by default/object.tt
package Paws::WAFRegional::ByteMatchSetSummary;
  use Moose;
  has ByteMatchSetId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ByteMatchSetSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::ByteMatchSetSummary object:

  $service_obj->Method(Att1 => { ByteMatchSetId => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::ByteMatchSetSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ByteMatchSetId

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

Returned by ListByteMatchSets. Each C<ByteMatchSetSummary> object
includes the C<Name> and C<ByteMatchSetId> for one ByteMatchSet.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ByteMatchSetId => Str

The C<ByteMatchSetId> for a C<ByteMatchSet>. You use C<ByteMatchSetId>
to get information about a C<ByteMatchSet>, update a C<ByteMatchSet>,
remove a C<ByteMatchSet> from a C<Rule>, and delete a C<ByteMatchSet>
from AWS WAF.

C<ByteMatchSetId> is returned by CreateByteMatchSet and by
ListByteMatchSets.


=head2 B<REQUIRED> Name => Str

A friendly name or description of the ByteMatchSet. You can't change
C<Name> after you create a C<ByteMatchSet>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

