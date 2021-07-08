
package Paws::Config::SelectAggregateResourceConfig;
  use Moose;
  has ConfigurationAggregatorName => (is => 'ro', isa => 'Str', required => 1);
  has Expression => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SelectAggregateResourceConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::SelectAggregateResourceConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::SelectAggregateResourceConfig - Arguments for method SelectAggregateResourceConfig on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SelectAggregateResourceConfig on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method SelectAggregateResourceConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SelectAggregateResourceConfig.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $SelectAggregateResourceConfigResponse =
      $config->SelectAggregateResourceConfig(
      ConfigurationAggregatorName => 'MyConfigurationAggregatorName',
      Expression                  => 'MyExpression',
      Limit                       => 1,                               # OPTIONAL
      MaxResults                  => 1,                               # OPTIONAL
      NextToken                   => 'MyNextToken',                   # OPTIONAL
      );

    # Results:
    my $NextToken = $SelectAggregateResourceConfigResponse->NextToken;
    my $QueryInfo = $SelectAggregateResourceConfigResponse->QueryInfo;
    my $Results   = $SelectAggregateResourceConfigResponse->Results;

    # Returns a L<Paws::Config::SelectAggregateResourceConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/SelectAggregateResourceConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationAggregatorName => Str

The name of the configuration aggregator.



=head2 B<REQUIRED> Expression => Str

The SQL query SELECT command.



=head2 Limit => Int

The maximum number of query results returned on each page.



=head2 MaxResults => Int

The maximum number of query results returned on each page. AWS Config
also allows the Limit request parameter.



=head2 NextToken => Str

The nextToken string returned in a previous request that you use to
request the next page of results in a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SelectAggregateResourceConfig in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

