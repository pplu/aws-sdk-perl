
package Paws::SageMaker::ListDataQualityJobDefinitions;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has EndpointName => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataQualityJobDefinitions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListDataQualityJobDefinitionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListDataQualityJobDefinitions - Arguments for method ListDataQualityJobDefinitions on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataQualityJobDefinitions on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListDataQualityJobDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataQualityJobDefinitions.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListDataQualityJobDefinitionsResponse =
      $api . sagemaker->ListDataQualityJobDefinitions(
      CreationTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      EndpointName       => 'MyEndpointName',         # OPTIONAL
      MaxResults         => 1,                        # OPTIONAL
      NameContains       => 'MyNameContains',         # OPTIONAL
      NextToken          => 'MyNextToken',            # OPTIONAL
      SortBy             => 'Name',                   # OPTIONAL
      SortOrder          => 'Ascending',              # OPTIONAL
      );

    # Results:
    my $JobDefinitionSummaries =
      $ListDataQualityJobDefinitionsResponse->JobDefinitionSummaries;
    my $NextToken = $ListDataQualityJobDefinitionsResponse->NextToken;

   # Returns a L<Paws::SageMaker::ListDataQualityJobDefinitionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListDataQualityJobDefinitions>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns only data quality monitoring job definitions
created after the specified time.



=head2 CreationTimeBefore => Str

A filter that returns only data quality monitoring job definitions
created before the specified time.



=head2 EndpointName => Str

A filter that lists the data quality job definitions associated with
the specified endpoint.



=head2 MaxResults => Int

The maximum number of data quality monitoring job definitions to return
in the response.



=head2 NameContains => Str

A string in the data quality monitoring job definition name. This
filter returns only data quality monitoring job definitions whose name
contains the specified string.



=head2 NextToken => Str

If the result of the previous C<ListDataQualityJobDefinitions> request
was truncated, the response includes a C<NextToken>. To retrieve the
next set of transform jobs, use the token in the next request.E<gt>



=head2 SortBy => Str

The field to sort results by. The default is C<CreationTime>.

Valid values are: C<"Name">, C<"CreationTime">

=head2 SortOrder => Str

The sort order for results. The default is C<Descending>.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataQualityJobDefinitions in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

