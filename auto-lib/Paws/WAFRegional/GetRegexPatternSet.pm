
package Paws::WAFRegional::GetRegexPatternSet;
  use Moose;
  has RegexPatternSetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRegexPatternSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::GetRegexPatternSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetRegexPatternSet - Arguments for method GetRegexPatternSet on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRegexPatternSet on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method GetRegexPatternSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRegexPatternSet.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    my $GetRegexPatternSetResponse = $waf -regional->GetRegexPatternSet(
      RegexPatternSetId => 'MyResourceId',

    );

    # Results:
    my $RegexPatternSet = $GetRegexPatternSetResponse->RegexPatternSet;

    # Returns a L<Paws::WAFRegional::GetRegexPatternSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/GetRegexPatternSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RegexPatternSetId => Str

The C<RegexPatternSetId> of the RegexPatternSet that you want to get.
C<RegexPatternSetId> is returned by CreateRegexPatternSet and by
ListRegexPatternSets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRegexPatternSet in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

