
package Paws::WAFRegional::ListRules;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextMarker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRules');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::ListRulesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ListRules - Arguments for method ListRules on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRules on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method ListRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRules.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    # To list rules
    # The following example returns an array of up to 100 rules.
    my $ListRulesResponse = $waf -regional->ListRules(
      {
        'Limit' => 100
      }
    );

    # Results:
    my $Rules = $ListRulesResponse->Rules;

    # Returns a L<Paws::WAFRegional::ListRulesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/ListRules>

=head1 ATTRIBUTES


=head2 Limit => Int

Specifies the number of C<Rules> that you want AWS WAF to return for
this request. If you have more C<Rules> than the number that you
specify for C<Limit>, the response includes a C<NextMarker> value that
you can use to get another batch of C<Rules>.



=head2 NextMarker => Str

If you specify a value for C<Limit> and you have more C<Rules> than the
value of C<Limit>, AWS WAF returns a C<NextMarker> value in the
response that allows you to list another group of C<Rules>. For the
second and subsequent C<ListRules> requests, specify the value of
C<NextMarker> from the previous response to get information about
another batch of C<Rules>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRules in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

