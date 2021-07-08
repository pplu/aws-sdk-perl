
package Paws::CloudWatchLogs::DescribeQueryDefinitions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has QueryDefinitionNamePrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryDefinitionNamePrefix' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeQueryDefinitions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::DescribeQueryDefinitionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeQueryDefinitions - Arguments for method DescribeQueryDefinitions on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeQueryDefinitions on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method DescribeQueryDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeQueryDefinitions.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $DescribeQueryDefinitionsResponse = $logs->DescribeQueryDefinitions(
      MaxResults                => 1,                          # OPTIONAL
      NextToken                 => 'MyNextToken',              # OPTIONAL
      QueryDefinitionNamePrefix => 'MyQueryDefinitionName',    # OPTIONAL
    );

    # Results:
    my $NextToken        = $DescribeQueryDefinitionsResponse->NextToken;
    my $QueryDefinitions = $DescribeQueryDefinitionsResponse->QueryDefinitions;

   # Returns a L<Paws::CloudWatchLogs::DescribeQueryDefinitionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/DescribeQueryDefinitions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Limits the number of returned query definitions to the specified
number.



=head2 NextToken => Str





=head2 QueryDefinitionNamePrefix => Str

Use this parameter to filter your results to only the query definitions
that have names that start with the prefix you specify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeQueryDefinitions in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

