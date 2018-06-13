
package Paws::WAFRegional::ListSqlInjectionMatchSets;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextMarker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSqlInjectionMatchSets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::ListSqlInjectionMatchSetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ListSqlInjectionMatchSets - Arguments for method ListSqlInjectionMatchSets on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSqlInjectionMatchSets on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method ListSqlInjectionMatchSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSqlInjectionMatchSets.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    # To list SQL injection match sets
    # The following example returns an array of up to 100 SQL injection match
    # sets.
    my $ListSqlInjectionMatchSetsResponse =
      $waf -regional->ListSqlInjectionMatchSets(
      {
        'Limit' => 100
      }
      );

    # Results:
    my $SqlInjectionMatchSets =
      $ListSqlInjectionMatchSetsResponse->SqlInjectionMatchSets;

    # Returns a L<Paws::WAFRegional::ListSqlInjectionMatchSetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/ListSqlInjectionMatchSets>

=head1 ATTRIBUTES


=head2 Limit => Int

Specifies the number of SqlInjectionMatchSet objects that you want AWS
WAF to return for this request. If you have more
C<SqlInjectionMatchSet> objects than the number you specify for
C<Limit>, the response includes a C<NextMarker> value that you can use
to get another batch of C<Rules>.



=head2 NextMarker => Str

If you specify a value for C<Limit> and you have more
SqlInjectionMatchSet objects than the value of C<Limit>, AWS WAF
returns a C<NextMarker> value in the response that allows you to list
another group of C<SqlInjectionMatchSets>. For the second and
subsequent C<ListSqlInjectionMatchSets> requests, specify the value of
C<NextMarker> from the previous response to get information about
another batch of C<SqlInjectionMatchSets>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSqlInjectionMatchSets in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

