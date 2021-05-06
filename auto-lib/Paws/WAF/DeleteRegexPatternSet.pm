
package Paws::WAF::DeleteRegexPatternSet;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has RegexPatternSetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRegexPatternSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::DeleteRegexPatternSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::DeleteRegexPatternSet - Arguments for method DeleteRegexPatternSet on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRegexPatternSet on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method DeleteRegexPatternSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRegexPatternSet.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    my $DeleteRegexPatternSetResponse = $waf->DeleteRegexPatternSet(
      ChangeToken       => 'MyChangeToken',
      RegexPatternSetId => 'MyResourceId',

    );

    # Results:
    my $ChangeToken = $DeleteRegexPatternSetResponse->ChangeToken;

    # Returns a L<Paws::WAF::DeleteRegexPatternSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/DeleteRegexPatternSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> RegexPatternSetId => Str

The C<RegexPatternSetId> of the RegexPatternSet that you want to
delete. C<RegexPatternSetId> is returned by CreateRegexPatternSet and
by ListRegexPatternSets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRegexPatternSet in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

