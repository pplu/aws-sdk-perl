
package Paws::WAFRegional::UpdateRegexPatternSet;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has RegexPatternSetId => (is => 'ro', isa => 'Str', required => 1);
  has Updates => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::RegexPatternSetUpdate]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRegexPatternSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::UpdateRegexPatternSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::UpdateRegexPatternSet - Arguments for method UpdateRegexPatternSet on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRegexPatternSet on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method UpdateRegexPatternSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRegexPatternSet.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    my $UpdateRegexPatternSetResponse = $waf -regional->UpdateRegexPatternSet(
      ChangeToken       => 'MyChangeToken',
      RegexPatternSetId => 'MyResourceId',
      Updates           => [
        {
          Action             => 'INSERT',               # values: INSERT, DELETE
          RegexPatternString => 'MyRegexPatternString', # min: 1

        },
        ...
      ],

    );

    # Results:
    my $ChangeToken = $UpdateRegexPatternSetResponse->ChangeToken;

    # Returns a L<Paws::WAFRegional::UpdateRegexPatternSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/UpdateRegexPatternSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> RegexPatternSetId => Str

The C<RegexPatternSetId> of the RegexPatternSet that you want to
update. C<RegexPatternSetId> is returned by CreateRegexPatternSet and
by ListRegexPatternSets.



=head2 B<REQUIRED> Updates => ArrayRef[L<Paws::WAFRegional::RegexPatternSetUpdate>]

An array of C<RegexPatternSetUpdate> objects that you want to insert
into or delete from a RegexPatternSet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRegexPatternSet in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

