package Paws::WAFRegional::RegexMatchSetSummary;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RegexMatchSetId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::RegexMatchSetSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::RegexMatchSetSummary object:

  $service_obj->Method(Att1 => { Name => $value, ..., RegexMatchSetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::RegexMatchSetSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Returned by ListRegexMatchSets. Each C<RegexMatchSetSummary> object
includes the C<Name> and C<RegexMatchSetId> for one RegexMatchSet.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  A friendly name or description of the RegexMatchSet. You can't change
C<Name> after you create a C<RegexMatchSet>.


=head2 B<REQUIRED> RegexMatchSetId => Str

  The C<RegexMatchSetId> for a C<RegexMatchSet>. You use
C<RegexMatchSetId> to get information about a C<RegexMatchSet>, update
a C<RegexMatchSet>, remove a C<RegexMatchSet> from a C<Rule>, and
delete a C<RegexMatchSet> from AWS WAF.

C<RegexMatchSetId> is returned by CreateRegexMatchSet and by
ListRegexMatchSets.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

