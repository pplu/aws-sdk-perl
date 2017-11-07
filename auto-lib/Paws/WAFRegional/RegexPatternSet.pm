package Paws::WAFRegional::RegexPatternSet;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has RegexPatternSetId => (is => 'ro', isa => 'Str', required => 1);
  has RegexPatternStrings => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::RegexPatternSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::RegexPatternSet object:

  $service_obj->Method(Att1 => { Name => $value, ..., RegexPatternStrings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::RegexPatternSet object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

The C<RegexPatternSet> specifies the regular expression (regex) pattern
that you want AWS WAF to search for, such as C<B[a@]dB[o0]t>. You can
then configure AWS WAF to reject those requests.

=head1 ATTRIBUTES


=head2 Name => Str

  A friendly name or description of the RegexPatternSet. You can't change
C<Name> after you create a C<RegexPatternSet>.


=head2 B<REQUIRED> RegexPatternSetId => Str

  The identifier for the C<RegexPatternSet>. You use C<RegexPatternSetId>
to get information about a C<RegexPatternSet>, update a
C<RegexPatternSet>, remove a C<RegexPatternSet> from a
C<RegexMatchSet>, and delete a C<RegexPatternSet> from AWS WAF.

C<RegexMatchSetId> is returned by CreateRegexPatternSet and by
ListRegexPatternSets.


=head2 B<REQUIRED> RegexPatternStrings => ArrayRef[Str|Undef]

  Specifies the regular expression (regex) patterns that you want AWS WAF
to search for, such as C<B[a@]dB[o0]t>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

