
package Paws::WAFRegional::GetRateBasedRuleManagedKeys;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has RuleId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRateBasedRuleManagedKeys');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::GetRateBasedRuleManagedKeysResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetRateBasedRuleManagedKeys - Arguments for method GetRateBasedRuleManagedKeys on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRateBasedRuleManagedKeys on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method GetRateBasedRuleManagedKeys.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRateBasedRuleManagedKeys.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    my $GetRateBasedRuleManagedKeysResponse =
      $waf -regional->GetRateBasedRuleManagedKeys(
      RuleId     => 'MyResourceId',
      NextMarker => 'MyNextMarker',    # OPTIONAL
      );

    # Results:
    my $ManagedKeys = $GetRateBasedRuleManagedKeysResponse->ManagedKeys;
    my $NextMarker  = $GetRateBasedRuleManagedKeysResponse->NextMarker;

   # Returns a L<Paws::WAFRegional::GetRateBasedRuleManagedKeysResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/GetRateBasedRuleManagedKeys>

=head1 ATTRIBUTES


=head2 NextMarker => Str

A null value and not currently used. Do not include this in your
request.



=head2 B<REQUIRED> RuleId => Str

The C<RuleId> of the RateBasedRule for which you want to get a list of
C<ManagedKeys>. C<RuleId> is returned by CreateRateBasedRule and by
ListRateBasedRules.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRateBasedRuleManagedKeys in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

