
package Paws::Forecast::ListDatasetGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDatasetGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::ListDatasetGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ListDatasetGroups - Arguments for method ListDatasetGroups on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDatasetGroups on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method ListDatasetGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDatasetGroups.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $ListDatasetGroupsResponse = $forecast->ListDatasetGroups(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $DatasetGroups = $ListDatasetGroupsResponse->DatasetGroups;
    my $NextToken     = $ListDatasetGroupsResponse->NextToken;

    # Returns a L<Paws::Forecast::ListDatasetGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/ListDatasetGroups>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The number of items to return in the response.



=head2 NextToken => Str

If the result of the previous request was truncated, the response
includes a C<NextToken>. To retrieve the next set of results, use the
token in the next request. Tokens expire after 24 hours.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDatasetGroups in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

