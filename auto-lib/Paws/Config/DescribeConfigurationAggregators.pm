
package Paws::Config::DescribeConfigurationAggregators;
  use Moose;
  has ConfigurationAggregatorNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationAggregators');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DescribeConfigurationAggregatorsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConfigurationAggregators - Arguments for method DescribeConfigurationAggregators on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConfigurationAggregators on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DescribeConfigurationAggregators.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConfigurationAggregators.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $DescribeConfigurationAggregatorsResponse =
      $config->DescribeConfigurationAggregators(
      ConfigurationAggregatorNames => [
        'MyConfigurationAggregatorName', ...    # min: 1, max: 256
      ],                                        # OPTIONAL
      Limit     => 1,                           # OPTIONAL
      NextToken => 'MyString',                  # OPTIONAL
      );

    # Results:
    my $ConfigurationAggregators =
      $DescribeConfigurationAggregatorsResponse->ConfigurationAggregators;
    my $NextToken = $DescribeConfigurationAggregatorsResponse->NextToken;

   # Returns a L<Paws::Config::DescribeConfigurationAggregatorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DescribeConfigurationAggregators>

=head1 ATTRIBUTES


=head2 ConfigurationAggregatorNames => ArrayRef[Str|Undef]

The name of the configuration aggregators.



=head2 Limit => Int

The maximum number of configuration aggregators returned on each page.
The default is maximum. If you specify 0, AWS Config uses the default.



=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConfigurationAggregators in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

