
package Paws::WAF::GetRegexMatchSet;
  use Moose;
  has RegexMatchSetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRegexMatchSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::GetRegexMatchSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetRegexMatchSet - Arguments for method GetRegexMatchSet on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRegexMatchSet on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method GetRegexMatchSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRegexMatchSet.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    my $GetRegexMatchSetResponse = $waf->GetRegexMatchSet(
      RegexMatchSetId => 'MyResourceId',

    );

    # Results:
    my $RegexMatchSet = $GetRegexMatchSetResponse->RegexMatchSet;

    # Returns a L<Paws::WAF::GetRegexMatchSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/GetRegexMatchSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RegexMatchSetId => Str

The C<RegexMatchSetId> of the RegexMatchSet that you want to get.
C<RegexMatchSetId> is returned by CreateRegexMatchSet and by
ListRegexMatchSets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRegexMatchSet in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

