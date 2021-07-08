
package Paws::Personalize::ListFilters;
  use Moose;
  has DatasetGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetGroupArn' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFilters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::ListFiltersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListFilters - Arguments for method ListFilters on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFilters on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method ListFilters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFilters.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $ListFiltersResponse = $personalize->ListFilters(
      DatasetGroupArn => 'MyArn',          # OPTIONAL
      MaxResults      => 1,                # OPTIONAL
      NextToken       => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Filters   = $ListFiltersResponse->Filters;
    my $NextToken = $ListFiltersResponse->NextToken;

    # Returns a L<Paws::Personalize::ListFiltersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/ListFilters>

=head1 ATTRIBUTES


=head2 DatasetGroupArn => Str

The ARN of the dataset group that contains the filters.



=head2 MaxResults => Int

The maximum number of filters to return.



=head2 NextToken => Str

A token returned from the previous call to C<ListFilters> for getting
the next set of filters (if they exist).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFilters in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

