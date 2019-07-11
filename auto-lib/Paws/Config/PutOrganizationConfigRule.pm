
package Paws::Config::PutOrganizationConfigRule;
  use Moose;
  has ExcludedAccounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OrganizationConfigRuleName => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationCustomRuleMetadata => (is => 'ro', isa => 'Paws::Config::OrganizationCustomRuleMetadata');
  has OrganizationManagedRuleMetadata => (is => 'ro', isa => 'Paws::Config::OrganizationManagedRuleMetadata');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutOrganizationConfigRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::PutOrganizationConfigRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutOrganizationConfigRule - Arguments for method PutOrganizationConfigRule on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutOrganizationConfigRule on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method PutOrganizationConfigRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutOrganizationConfigRule.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $PutOrganizationConfigRuleResponse = $config->PutOrganizationConfigRule(
      OrganizationConfigRuleName     => 'MyStringWithCharLimit64',
      ExcludedAccounts               => [ 'MyAccountId', ... ],      # OPTIONAL
      OrganizationCustomRuleMetadata => {
        LambdaFunctionArn => 'MyStringWithCharLimit256',    # min: 1, max: 256
        OrganizationConfigRuleTriggerTypes => [
          'ConfigurationItemChangeNotification',
          ... # values: ConfigurationItemChangeNotification, OversizedConfigurationItemChangeNotification, ScheduledNotification
        ],
        Description => 'MyStringWithCharLimit256Min0',    # max: 256; OPTIONAL
        InputParameters =>
          'MyStringWithCharLimit2048',    # min: 1, max: 2048; OPTIONAL
        MaximumExecutionFrequency => 'One_Hour'
        , # values: One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours; OPTIONAL
        ResourceIdScope =>
          'MyStringWithCharLimit768',    # min: 1, max: 768; OPTIONAL
        ResourceTypesScope => [
          'MyStringWithCharLimit256', ...    # min: 1, max: 256
        ],                                   # max: 100; OPTIONAL
        TagKeyScope => 'MyStringWithCharLimit128',  # min: 1, max: 128; OPTIONAL
        TagValueScope => 'MyStringWithCharLimit256',    # min: 1, max: 256
      },    # OPTIONAL
      OrganizationManagedRuleMetadata => {
        RuleIdentifier => 'MyStringWithCharLimit256',       # min: 1, max: 256
        Description    => 'MyStringWithCharLimit256Min0',   # max: 256; OPTIONAL
        InputParameters =>
          'MyStringWithCharLimit2048',    # min: 1, max: 2048; OPTIONAL
        MaximumExecutionFrequency => 'One_Hour'
        , # values: One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours; OPTIONAL
        ResourceIdScope =>
          'MyStringWithCharLimit768',    # min: 1, max: 768; OPTIONAL
        ResourceTypesScope => [
          'MyStringWithCharLimit256', ...    # min: 1, max: 256
        ],                                   # max: 100; OPTIONAL
        TagKeyScope => 'MyStringWithCharLimit128',  # min: 1, max: 128; OPTIONAL
        TagValueScope => 'MyStringWithCharLimit256',    # min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $OrganizationConfigRuleArn =
      $PutOrganizationConfigRuleResponse->OrganizationConfigRuleArn;

    # Returns a L<Paws::Config::PutOrganizationConfigRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/PutOrganizationConfigRule>

=head1 ATTRIBUTES


=head2 ExcludedAccounts => ArrayRef[Str|Undef]





=head2 B<REQUIRED> OrganizationConfigRuleName => Str





=head2 OrganizationCustomRuleMetadata => L<Paws::Config::OrganizationCustomRuleMetadata>





=head2 OrganizationManagedRuleMetadata => L<Paws::Config::OrganizationManagedRuleMetadata>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutOrganizationConfigRule in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

