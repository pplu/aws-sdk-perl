
package Paws::WorkMail::PutAccessControlRule;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Effect => (is => 'ro', isa => 'Str', required => 1);
  has IpRanges => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NotActions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NotIpRanges => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NotUserIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has UserIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAccessControlRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::PutAccessControlRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::PutAccessControlRule - Arguments for method PutAccessControlRule on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAccessControlRule on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method PutAccessControlRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAccessControlRule.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $PutAccessControlRuleResponse = $workmail->PutAccessControlRule(
      Description    => 'MyAccessControlRuleDescription',
      Effect         => 'ALLOW',
      Name           => 'MyAccessControlRuleName',
      OrganizationId => 'MyOrganizationId',
      Actions        => [
        'MyAccessControlRuleAction', ...    # min: 1, max: 64
      ],    # OPTIONAL
      IpRanges => [
        'MyIpRange', ...    # min: 1, max: 18
      ],    # OPTIONAL
      NotActions => [
        'MyAccessControlRuleAction', ...    # min: 1, max: 64
      ],    # OPTIONAL
      NotIpRanges => [
        'MyIpRange', ...    # min: 1, max: 18
      ],    # OPTIONAL
      NotUserIds => [
        'MyWorkMailIdentifier', ...    # min: 12, max: 256
      ],    # OPTIONAL
      UserIds => [
        'MyWorkMailIdentifier', ...    # min: 12, max: 256
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/PutAccessControlRule>

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[Str|Undef]

Access protocol actions to include in the rule. Valid values include
C<ActiveSync>, C<AutoDiscover>, C<EWS>, C<IMAP>, C<SMTP>,
C<WindowsOutlook>, and C<WebMail>.



=head2 B<REQUIRED> Description => Str

The rule description.



=head2 B<REQUIRED> Effect => Str

The rule effect.

Valid values are: C<"ALLOW">, C<"DENY">

=head2 IpRanges => ArrayRef[Str|Undef]

IPv4 CIDR ranges to include in the rule.



=head2 B<REQUIRED> Name => Str

The rule name.



=head2 NotActions => ArrayRef[Str|Undef]

Access protocol actions to exclude from the rule. Valid values include
C<ActiveSync>, C<AutoDiscover>, C<EWS>, C<IMAP>, C<SMTP>,
C<WindowsOutlook>, and C<WebMail>.



=head2 NotIpRanges => ArrayRef[Str|Undef]

IPv4 CIDR ranges to exclude from the rule.



=head2 NotUserIds => ArrayRef[Str|Undef]

User IDs to exclude from the rule.



=head2 B<REQUIRED> OrganizationId => Str

The identifier of the organization.



=head2 UserIds => ArrayRef[Str|Undef]

User IDs to include in the rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAccessControlRule in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

