
package Paws::Config::DescribeRemediationConfigurations;
  use Moose;
  has ConfigRuleNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRemediationConfigurations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DescribeRemediationConfigurationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeRemediationConfigurations - Arguments for method DescribeRemediationConfigurations on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRemediationConfigurations on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DescribeRemediationConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRemediationConfigurations.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $DescribeRemediationConfigurationsResponse =
      $config->DescribeRemediationConfigurations(
      ConfigRuleNames => [
        'MyConfigRuleName', ...    # min: 1, max: 128
      ],

      );

    # Results:
    my $RemediationConfigurations =
      $DescribeRemediationConfigurationsResponse->RemediationConfigurations;

  # Returns a L<Paws::Config::DescribeRemediationConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DescribeRemediationConfigurations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigRuleNames => ArrayRef[Str|Undef]

A list of AWS Config rule names of remediation configurations for which
you want details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRemediationConfigurations in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

