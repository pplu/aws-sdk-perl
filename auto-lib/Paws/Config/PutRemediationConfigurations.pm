
package Paws::Config::PutRemediationConfigurations;
  use Moose;
  has RemediationConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Config::RemediationConfiguration]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRemediationConfigurations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::PutRemediationConfigurationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutRemediationConfigurations - Arguments for method PutRemediationConfigurations on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRemediationConfigurations on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method PutRemediationConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRemediationConfigurations.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $PutRemediationConfigurationsResponse =
      $config->PutRemediationConfigurations(
      RemediationConfigurations => [
        {
          ConfigRuleName => 'MyConfigRuleName',           # min: 1, max: 128
          TargetId       => 'MyStringWithCharLimit256',   # min: 1, max: 256
          TargetType     => 'SSM_DOCUMENT',               # values: SSM_DOCUMENT
          Arn => 'MyStringWithCharLimit1024',    # min: 1, max: 1024; OPTIONAL
          Automatic => 1,                        # OPTIONAL
          CreatedByService =>
            'MyStringWithCharLimit1024',         # min: 1, max: 1024; OPTIONAL
          ExecutionControls => {
            SsmControls => {
              ConcurrentExecutionRatePercentage =>
                1,                               # min: 1, max: 100; OPTIONAL
              ErrorPercentage => 1,              # min: 1, max: 100; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          MaximumAutomaticAttempts => 1,    # min: 1, max: 25; OPTIONAL
          Parameters               => {
            'MyStringWithCharLimit256' => {
              ResourceValue => {
                Value => 'RESOURCE_ID',     # values: RESOURCE_ID

              },    # OPTIONAL
              StaticValue => {
                Values => [
                  'MyStringWithCharLimit256', ...    # min: 1, max: 256
                ],                                   # max: 25

              },    # OPTIONAL
            },    # key: min: 1, max: 256
          },    # max: 25; OPTIONAL
          ResourceType        => 'MyString',    # OPTIONAL
          RetryAttemptSeconds => 1,             # min: 1, max: 2678000; OPTIONAL
          TargetVersion       => 'MyString',    # OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $FailedBatches = $PutRemediationConfigurationsResponse->FailedBatches;

    # Returns a L<Paws::Config::PutRemediationConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/PutRemediationConfigurations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RemediationConfigurations => ArrayRef[L<Paws::Config::RemediationConfiguration>]

A list of remediation configuration objects.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRemediationConfigurations in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

