
package Paws::Config::PutConfigRule;
  use Moose;
  has ConfigRule => (is => 'ro', isa => 'Paws::Config::ConfigRule', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutConfigRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutConfigRule - Arguments for method PutConfigRule on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutConfigRule on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method PutConfigRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutConfigRule.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    $config->PutConfigRule(
      ConfigRule => {
        Source => {
          Owner => 'CUSTOM_LAMBDA',    # values: CUSTOM_LAMBDA, AWS
          SourceIdentifier => 'MyStringWithCharLimit256',    # min: 1, max: 256
          SourceDetails    => [
            {
              EventSource => 'aws.config',    # values: aws.config; OPTIONAL
              MaximumExecutionFrequency => 'One_Hour'
              , # values: One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours; OPTIONAL
              MessageType => 'ConfigurationItemChangeNotification'
              , # values: ConfigurationItemChangeNotification, ConfigurationSnapshotDeliveryCompleted, ScheduledNotification, OversizedConfigurationItemChangeNotification; OPTIONAL
            },
            ...
          ],    # max: 25; OPTIONAL
        },
        ConfigRuleArn  => 'MyString',                # OPTIONAL
        ConfigRuleId   => 'MyString',                # OPTIONAL
        ConfigRuleName => 'MyStringWithCharLimit64', # min: 1, max: 64; OPTIONAL
        ConfigRuleState => 'ACTIVE'
        ,    # values: ACTIVE, DELETING, DELETING_RESULTS, EVALUATING; OPTIONAL
        CreatedBy   => 'MyStringWithCharLimit256',          # min: 1, max: 256
        Description => 'MyEmptiableStringWithCharLimit256', # max: 256; OPTIONAL
        InputParameters =>
          'MyStringWithCharLimit1024',    # min: 1, max: 1024; OPTIONAL
        MaximumExecutionFrequency => 'One_Hour'
        , # values: One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours; OPTIONAL
        Scope => {
          ComplianceResourceId =>
            'MyBaseResourceId',    # min: 1, max: 768; OPTIONAL
          ComplianceResourceTypes => [
            'MyStringWithCharLimit256', ...    # min: 1, max: 256
          ],                                   # max: 100; OPTIONAL
          TagKey   => 'MyStringWithCharLimit128',   # min: 1, max: 128; OPTIONAL
          TagValue => 'MyStringWithCharLimit256',   # min: 1, max: 256
        },    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/PutConfigRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigRule => L<Paws::Config::ConfigRule>

The rule that you want to add to your account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutConfigRule in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

