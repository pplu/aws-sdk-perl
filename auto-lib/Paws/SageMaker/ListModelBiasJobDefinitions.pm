
package Paws::SageMaker::ListModelBiasJobDefinitions;
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

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListModelBiasJobDefinitions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListModelBiasJobDefinitionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListModelBiasJobDefinitions - Arguments for method ListModelBiasJobDefinitions on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListModelBiasJobDefinitions on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListModelBiasJobDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListModelBiasJobDefinitions.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListModelBiasJobDefinitionsResponse =
      $api . sagemaker->ListModelBiasJobDefinitions(
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
      $ListModelBiasJobDefinitionsResponse->JobDefinitionSummaries;
    my $NextToken = $ListModelBiasJobDefinitionsResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListModelBiasJobDefinitionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListModelBiasJobDefinitions>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns only model bias jobs created after a specified
time.



=head2 CreationTimeBefore => Str

A filter that returns only model bias jobs created before a specified
time.



=head2 EndpointName => Str

Name of the endpoint to monitor for model bias.



=head2 MaxResults => Int

The maximum number of model bias jobs to return in the response. The
default value is 10.



=head2 NameContains => Str

Filter for model bias jobs whose name contains a specified string.



=head2 NextToken => Str

The token returned if the response is truncated. To retrieve the next
set of job executions, use it in the next request.



=head2 SortBy => Str

Whether to sort results by the C<Name> or C<CreationTime> field. The
default is C<CreationTime>.

Valid values are: C<"Name">, C<"CreationTime">

=head2 SortOrder => Str

Whether to sort the results in C<Ascending> or C<Descending> order. The
default is C<Descending>.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListModelBiasJobDefinitions in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

