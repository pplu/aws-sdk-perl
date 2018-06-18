
package Paws::WAFRegional::CreateRegexPatternSet;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRegexPatternSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::CreateRegexPatternSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::CreateRegexPatternSet - Arguments for method CreateRegexPatternSet on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRegexPatternSet on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method CreateRegexPatternSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRegexPatternSet.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    my $CreateRegexPatternSetResponse = $waf -regional->CreateRegexPatternSet(
      ChangeToken => 'MyChangeToken',
      Name        => 'MyResourceName',

    );

    # Results:
    my $ChangeToken     = $CreateRegexPatternSetResponse->ChangeToken;
    my $RegexPatternSet = $CreateRegexPatternSetResponse->RegexPatternSet;

    # Returns a L<Paws::WAFRegional::CreateRegexPatternSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/CreateRegexPatternSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> Name => Str

A friendly name or description of the RegexPatternSet. You can't change
C<Name> after you create a C<RegexPatternSet>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRegexPatternSet in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

