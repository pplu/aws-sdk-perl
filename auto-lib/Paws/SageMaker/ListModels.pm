
package Paws::SageMaker::ListModels;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListModels');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListModelsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListModels - Arguments for method ListModels on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListModels on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListModels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListModels.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListModelsOutput = $api . sagemaker->ListModels(
      CreationTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults         => 1,                        # OPTIONAL
      NameContains       => 'MyModelNameContains',    # OPTIONAL
      NextToken          => 'MyPaginationToken',      # OPTIONAL
      SortBy             => 'Name',                   # OPTIONAL
      SortOrder          => 'Ascending',              # OPTIONAL
    );

    # Results:
    my $Models    = $ListModelsOutput->Models;
    my $NextToken = $ListModelsOutput->NextToken;

    # Returns a L<Paws::SageMaker::ListModelsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListModels>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns only models created after the specified time
(timestamp).



=head2 CreationTimeBefore => Str

A filter that returns only models created before the specified time
(timestamp).



=head2 MaxResults => Int

The maximum number of models to return in the response.



=head2 NameContains => Str

A string in the training job name. This filter returns only models in
the training job whose name contains the specified string.



=head2 NextToken => Str

If the response to a previous C<ListModels> request was truncated, the
response includes a C<NextToken>. To retrieve the next set of models,
use the token in the next request.



=head2 SortBy => Str

Sorts the list of results. The default is C<CreationTime>.

Valid values are: C<"Name">, C<"CreationTime">

=head2 SortOrder => Str

The sort order for results. The default is C<Ascending>.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListModels in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

