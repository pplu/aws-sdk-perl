
package Paws::SageMaker::ListTrialComponents;
  use Moose;
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has ExperimentName => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str');
  has TrialName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTrialComponents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListTrialComponentsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListTrialComponents - Arguments for method ListTrialComponents on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTrialComponents on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListTrialComponents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTrialComponents.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListTrialComponentsResponse = $api . sagemaker->ListTrialComponents(
      CreatedAfter   => '1970-01-01T01:00:00',       # OPTIONAL
      CreatedBefore  => '1970-01-01T01:00:00',       # OPTIONAL
      ExperimentName => 'MyExperimentEntityName',    # OPTIONAL
      MaxResults     => 1,                           # OPTIONAL
      NextToken      => 'MyNextToken',               # OPTIONAL
      SortBy         => 'Name',                      # OPTIONAL
      SortOrder      => 'Ascending',                 # OPTIONAL
      SourceArn      => 'MyString256',               # OPTIONAL
      TrialName      => 'MyExperimentEntityName',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTrialComponentsResponse->NextToken;
    my $TrialComponentSummaries =
      $ListTrialComponentsResponse->TrialComponentSummaries;

    # Returns a L<Paws::SageMaker::ListTrialComponentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListTrialComponents>

=head1 ATTRIBUTES


=head2 CreatedAfter => Str

A filter that returns only components created after the specified time.



=head2 CreatedBefore => Str

A filter that returns only components created before the specified
time.



=head2 ExperimentName => Str

A filter that returns only components that are part of the specified
experiment. If you specify C<ExperimentName>, you can't filter by
C<SourceArn> or C<TrialName>.



=head2 MaxResults => Int

The maximum number of components to return in the response. The default
value is 10.



=head2 NextToken => Str

If the previous call to C<ListTrialComponents> didn't return the full
set of components, the call returns a token for getting the next set of
components.



=head2 SortBy => Str

The property used to sort results. The default value is
C<CreationTime>.

Valid values are: C<"Name">, C<"CreationTime">

=head2 SortOrder => Str

The sort order. The default value is C<Descending>.

Valid values are: C<"Ascending">, C<"Descending">

=head2 SourceArn => Str

A filter that returns only components that have the specified source
Amazon Resource Name (ARN). If you specify C<SourceArn>, you can't
filter by C<ExperimentName> or C<TrialName>.



=head2 TrialName => Str

A filter that returns only components that are part of the specified
trial. If you specify C<TrialName>, you can't filter by
C<ExperimentName> or C<SourceArn>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTrialComponents in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

