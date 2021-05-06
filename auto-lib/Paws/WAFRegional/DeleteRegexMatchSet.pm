
package Paws::WAFRegional::DeleteRegexMatchSet;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has RegexMatchSetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRegexMatchSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::DeleteRegexMatchSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::DeleteRegexMatchSet - Arguments for method DeleteRegexMatchSet on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRegexMatchSet on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method DeleteRegexMatchSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRegexMatchSet.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    my $DeleteRegexMatchSetResponse = $waf -regional->DeleteRegexMatchSet(
      ChangeToken     => 'MyChangeToken',
      RegexMatchSetId => 'MyResourceId',

    );

    # Results:
    my $ChangeToken = $DeleteRegexMatchSetResponse->ChangeToken;

    # Returns a L<Paws::WAFRegional::DeleteRegexMatchSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/DeleteRegexMatchSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> RegexMatchSetId => Str

The C<RegexMatchSetId> of the RegexMatchSet that you want to delete.
C<RegexMatchSetId> is returned by CreateRegexMatchSet and by
ListRegexMatchSets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRegexMatchSet in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

