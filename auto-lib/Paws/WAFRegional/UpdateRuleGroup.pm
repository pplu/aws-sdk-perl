
package Paws::WAFRegional::UpdateRuleGroup;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has RuleGroupId => (is => 'ro', isa => 'Str', required => 1);
  has Updates => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::RuleGroupUpdate]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRuleGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::UpdateRuleGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::UpdateRuleGroup - Arguments for method UpdateRuleGroup on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRuleGroup on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method UpdateRuleGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRuleGroup.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    my $UpdateRuleGroupResponse = $waf -regional->UpdateRuleGroup(
      ChangeToken => 'MyChangeToken',
      RuleGroupId => 'MyResourceId',
      Updates     => [
        {
          Action        => 'INSERT',    # values: INSERT, DELETE
          ActivatedRule => {
            Priority => 1,
            RuleId   => 'MyResourceId',    # min: 1, max: 128
            Action   => {
              Type => 'BLOCK',             # values: BLOCK, ALLOW, COUNT

            },    # OPTIONAL
            ExcludedRules => [
              {
                RuleId => 'MyResourceId',    # min: 1, max: 128

              },
              ...
            ],                               # OPTIONAL
            OverrideAction => {
              Type => 'NONE',                # values: NONE, COUNT

            },    # OPTIONAL
            Type => 'REGULAR',    # values: REGULAR, RATE_BASED, GROUP; OPTIONAL
          },

        },
        ...
      ],

    );

    # Results:
    my $ChangeToken = $UpdateRuleGroupResponse->ChangeToken;

    # Returns a L<Paws::WAFRegional::UpdateRuleGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/UpdateRuleGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> RuleGroupId => Str

The C<RuleGroupId> of the RuleGroup that you want to update.
C<RuleGroupId> is returned by CreateRuleGroup and by ListRuleGroups.



=head2 B<REQUIRED> Updates => ArrayRef[L<Paws::WAFRegional::RuleGroupUpdate>]

An array of C<RuleGroupUpdate> objects that you want to insert into or
delete from a RuleGroup.

You can only insert C<REGULAR> rules into a rule group.

C<ActivatedRule|OverrideAction> applies only when updating or adding a
C<RuleGroup> to a C<WebACL>. In this case you do not use
C<ActivatedRule|Action>. For all other update requests,
C<ActivatedRule|Action> is used instead of
C<ActivatedRule|OverrideAction>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRuleGroup in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

