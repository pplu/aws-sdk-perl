
package Paws::WorkMail::UpdateMobileDeviceAccessRule;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DeviceModels => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DeviceOperatingSystems => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DeviceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DeviceUserAgents => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Effect => (is => 'ro', isa => 'Str', required => 1);
  has MobileDeviceAccessRuleId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NotDeviceModels => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NotDeviceOperatingSystems => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NotDeviceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NotDeviceUserAgents => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMobileDeviceAccessRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::UpdateMobileDeviceAccessRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::UpdateMobileDeviceAccessRule - Arguments for method UpdateMobileDeviceAccessRule on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMobileDeviceAccessRule on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method UpdateMobileDeviceAccessRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMobileDeviceAccessRule.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $UpdateMobileDeviceAccessRuleResponse =
      $workmail->UpdateMobileDeviceAccessRule(
      Effect                   => 'ALLOW',
      MobileDeviceAccessRuleId => 'MyMobileDeviceAccessRuleId',
      Name                     => 'MyMobileDeviceAccessRuleName',
      OrganizationId           => 'MyOrganizationId',
      Description  => 'MyMobileDeviceAccessRuleDescription',    # OPTIONAL
      DeviceModels => [
        'MyDeviceModel', ...    # min: 1, max: 256
      ],    # OPTIONAL
      DeviceOperatingSystems => [
        'MyDeviceOperatingSystem', ...    # min: 1, max: 256
      ],    # OPTIONAL
      DeviceTypes => [
        'MyDeviceType', ...    # min: 1, max: 256
      ],    # OPTIONAL
      DeviceUserAgents => [
        'MyDeviceUserAgent', ...    # min: 1, max: 256
      ],    # OPTIONAL
      NotDeviceModels => [
        'MyDeviceModel', ...    # min: 1, max: 256
      ],    # OPTIONAL
      NotDeviceOperatingSystems => [
        'MyDeviceOperatingSystem', ...    # min: 1, max: 256
      ],    # OPTIONAL
      NotDeviceTypes => [
        'MyDeviceType', ...    # min: 1, max: 256
      ],    # OPTIONAL
      NotDeviceUserAgents => [
        'MyDeviceUserAgent', ...    # min: 1, max: 256
      ],    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/UpdateMobileDeviceAccessRule>

=head1 ATTRIBUTES


=head2 Description => Str

The updated rule description.



=head2 DeviceModels => ArrayRef[Str|Undef]

Device models that the updated rule will match.



=head2 DeviceOperatingSystems => ArrayRef[Str|Undef]

Device operating systems that the updated rule will match.



=head2 DeviceTypes => ArrayRef[Str|Undef]

Device types that the updated rule will match.



=head2 DeviceUserAgents => ArrayRef[Str|Undef]

User agents that the updated rule will match.



=head2 B<REQUIRED> Effect => Str

The effect of the rule when it matches. Allowed values are C<ALLOW> or
C<DENY>.

Valid values are: C<"ALLOW">, C<"DENY">

=head2 B<REQUIRED> MobileDeviceAccessRuleId => Str

The identifier of the rule to be updated.



=head2 B<REQUIRED> Name => Str

The updated rule name.



=head2 NotDeviceModels => ArrayRef[Str|Undef]

Device models that the updated rule B<will not> match. All other device
models will match.



=head2 NotDeviceOperatingSystems => ArrayRef[Str|Undef]

Device operating systems that the updated rule B<will not> match. All
other device operating systems will match.



=head2 NotDeviceTypes => ArrayRef[Str|Undef]

Device types that the updated rule B<will not> match. All other device
types will match.



=head2 NotDeviceUserAgents => ArrayRef[Str|Undef]

User agents that the updated rule B<will not> match. All other user
agents will match.



=head2 B<REQUIRED> OrganizationId => Str

The Amazon WorkMail organization under which the rule will be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMobileDeviceAccessRule in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

