
package Paws::WAFRegional::UpdateRule;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has RuleId => (is => 'ro', isa => 'Str', required => 1);
  has Updates => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::RuleUpdate]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::UpdateRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::UpdateRule - Arguments for method UpdateRule on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRule on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method UpdateRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRule.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    # To update a rule
    # The following example deletes a Predicate object in a rule with the ID
    # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    my $UpdateRuleResponse = $waf -regional->UpdateRule(
      {
        'ChangeToken' => 'abcd12f2-46da-4fdb-b8d5-fbd4c466928f',
        'RuleId'      => 'example1ds3t-46da-4fdb-b8d5-abc321j569j5',
        'Updates'     => [

          {
            'Action'    => 'DELETE',
            'Predicate' => {
              'DataId'  => 'MyByteMatchSetID',
              'Negated' => 0,
              'Type'    => 'ByteMatch'
            }
          }
        ]
      }
    );

    # Results:
    my $ChangeToken = $UpdateRuleResponse->ChangeToken;

    # Returns a L<Paws::WAFRegional::UpdateRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/UpdateRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> RuleId => Str

The C<RuleId> of the C<Rule> that you want to update. C<RuleId> is
returned by C<CreateRule> and by ListRules.



=head2 B<REQUIRED> Updates => ArrayRef[L<Paws::WAFRegional::RuleUpdate>]

An array of C<RuleUpdate> objects that you want to insert into or
delete from a Rule. For more information, see the applicable data
types:

=over

=item *

RuleUpdate: Contains C<Action> and C<Predicate>

=item *

Predicate: Contains C<DataId>, C<Negated>, and C<Type>

=item *

FieldToMatch: Contains C<Data> and C<Type>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRule in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

