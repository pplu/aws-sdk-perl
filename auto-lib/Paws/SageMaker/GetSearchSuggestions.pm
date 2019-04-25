
package Paws::SageMaker::GetSearchSuggestions;
  use Moose;
  has Resource => (is => 'ro', isa => 'Str', required => 1);
  has SuggestionQuery => (is => 'ro', isa => 'Paws::SageMaker::SuggestionQuery');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSearchSuggestions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::GetSearchSuggestionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::GetSearchSuggestions - Arguments for method GetSearchSuggestions on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSearchSuggestions on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method GetSearchSuggestions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSearchSuggestions.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $GetSearchSuggestionsResponse = $api . sagemaker->GetSearchSuggestions(
      Resource        => 'TrainingJob',
      SuggestionQuery => {
        PropertyNameQuery => {
          PropertyNameHint => 'MyPropertyNameHint',    # max: 100

        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $PropertyNameSuggestions =
      $GetSearchSuggestionsResponse->PropertyNameSuggestions;

    # Returns a L<Paws::SageMaker::GetSearchSuggestionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/GetSearchSuggestions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Resource => Str

The name of the Amazon SageMaker resource to Search for. The only valid
C<Resource> value is C<TrainingJob>.

Valid values are: C<"TrainingJob">

=head2 SuggestionQuery => L<Paws::SageMaker::SuggestionQuery>

Limits the property names that are included in the response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSearchSuggestions in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

