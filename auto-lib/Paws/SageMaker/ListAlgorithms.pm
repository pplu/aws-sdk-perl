
package Paws::SageMaker::ListAlgorithms;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAlgorithms');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListAlgorithmsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListAlgorithms - Arguments for method ListAlgorithms on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAlgorithms on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListAlgorithms.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAlgorithms.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListAlgorithmsOutput = $api . sagemaker->ListAlgorithms(
      CreationTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults         => 1,                        # OPTIONAL
      NameContains       => 'MyNameContains',         # OPTIONAL
      NextToken          => 'MyNextToken',            # OPTIONAL
      SortBy             => 'Name',                   # OPTIONAL
      SortOrder          => 'Ascending',              # OPTIONAL
    );

    # Results:
    my $AlgorithmSummaryList = $ListAlgorithmsOutput->AlgorithmSummaryList;
    my $NextToken            = $ListAlgorithmsOutput->NextToken;

    # Returns a L<Paws::SageMaker::ListAlgorithmsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListAlgorithms>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns only algorithms created after the specified time
(timestamp).



=head2 CreationTimeBefore => Str

A filter that returns only algorithms created before the specified time
(timestamp).



=head2 MaxResults => Int

The maximum number of algorithms to return in the response.



=head2 NameContains => Str

A string in the algorithm name. This filter returns only algorithms
whose name contains the specified string.



=head2 NextToken => Str

If the response to a previous C<ListAlgorithms> request was truncated,
the response includes a C<NextToken>. To retrieve the next set of
algorithms, use the token in the next request.



=head2 SortBy => Str

The parameter by which to sort the results. The default is
C<CreationTime>.

Valid values are: C<"Name">, C<"CreationTime">

=head2 SortOrder => Str

The sort order for the results. The default is C<Ascending>.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAlgorithms in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

