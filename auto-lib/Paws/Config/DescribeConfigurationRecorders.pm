
package Paws::Config::DescribeConfigurationRecorders;
  use Moose;
  has ConfigurationRecorderNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationRecorders');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DescribeConfigurationRecordersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConfigurationRecorders - Arguments for method DescribeConfigurationRecorders on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConfigurationRecorders on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DescribeConfigurationRecorders.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConfigurationRecorders.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $DescribeConfigurationRecordersResponse =
      $config->DescribeConfigurationRecorders(
      ConfigurationRecorderNames => [
        'MyRecorderName', ...    # min: 1, max: 256
      ],                         # OPTIONAL
      );

    # Results:
    my $ConfigurationRecorders =
      $DescribeConfigurationRecordersResponse->ConfigurationRecorders;

    # Returns a L<Paws::Config::DescribeConfigurationRecordersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DescribeConfigurationRecorders>

=head1 ATTRIBUTES


=head2 ConfigurationRecorderNames => ArrayRef[Str|Undef]

A list of configuration recorder names.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConfigurationRecorders in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

