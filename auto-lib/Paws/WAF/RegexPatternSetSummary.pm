package Paws::WAF::RegexPatternSetSummary;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RegexPatternSetId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::RegexPatternSetSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::RegexPatternSetSummary object:

  $service_obj->Method(Att1 => { Name => $value, ..., RegexPatternSetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::RegexPatternSetSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Returned by ListRegexPatternSets. Each C<RegexPatternSetSummary> object
includes the C<Name> and C<RegexPatternSetId> for one RegexPatternSet.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  A friendly name or description of the RegexPatternSet. You can't change
C<Name> after you create a C<RegexPatternSet>.


=head2 B<REQUIRED> RegexPatternSetId => Str

  The C<RegexPatternSetId> for a C<RegexPatternSet>. You use
C<RegexPatternSetId> to get information about a C<RegexPatternSet>,
update a C<RegexPatternSet>, remove a C<RegexPatternSet> from a
C<RegexMatchSet>, and delete a C<RegexPatternSet> from AWS WAF.

C<RegexPatternSetId> is returned by CreateRegexPatternSet and by
ListRegexPatternSets.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

