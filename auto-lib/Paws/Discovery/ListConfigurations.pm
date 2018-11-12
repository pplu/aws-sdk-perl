
package Paws::Discovery::ListConfigurations;
  use Moose;
  has ConfigurationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configurationType' , required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::Filter]', traits => ['NameInRequest'], request_name => 'filters' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has OrderBy => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::OrderByElement]', traits => ['NameInRequest'], request_name => 'orderBy' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConfigurations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::ListConfigurationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::ListConfigurations - Arguments for method ListConfigurations on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConfigurations on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method ListConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConfigurations.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $ListConfigurationsResponse = $discovery->ListConfigurations(
      ConfigurationType => 'SERVER',
      Filters           => [
        {
          Condition => 'MyCondition',
          Name      => 'MyString',
          Values    => [ 'MyFilterValue', ... ],

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      OrderBy    => [
        {
          FieldName => 'MyString',
          SortOrder => 'ASC',         # values: ASC, DESC; OPTIONAL
        },
        ...
      ],                              # OPTIONAL
    );

    # Results:
    my $Configurations = $ListConfigurationsResponse->Configurations;
    my $NextToken      = $ListConfigurationsResponse->NextToken;

    # Returns a L<Paws::Discovery::ListConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/ListConfigurations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationType => Str

A valid configuration identified by Application Discovery Service.

Valid values are: C<"SERVER">, C<"PROCESS">, C<"CONNECTION">, C<"APPLICATION">

=head2 Filters => ArrayRef[L<Paws::Discovery::Filter>]

You can filter the request using various logical operators and a
I<key>-I<value> format. For example:

C<{"key": "serverType", "value": "webServer"}>

For a complete list of filter options and guidance about using them
with this action, see Querying Discovered Configuration Items
(http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#ListConfigurations).



=head2 MaxResults => Int

The total number of items to return. The maximum value is 100.



=head2 NextToken => Str

Token to retrieve the next set of results. For example, if a previous
call to ListConfigurations returned 100 items, but you set
C<ListConfigurationsRequest$maxResults> to 10, you received a set of 10
results along with a token. Use that token in this query to get the
next set of 10.



=head2 OrderBy => ArrayRef[L<Paws::Discovery::OrderByElement>]

Certain filter criteria return output that can be sorted in ascending
or descending order. For a list of output characteristics for each
filter, see Using the ListConfigurations Action
(http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#ListConfigurations).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConfigurations in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

