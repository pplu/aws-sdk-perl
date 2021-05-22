
package Paws::Translate::ListParallelData;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListParallelData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Translate::ListParallelDataResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::ListParallelData - Arguments for method ListParallelData on L<Paws::Translate>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListParallelData on the
L<Amazon Translate|Paws::Translate> service. Use the attributes of this class
as arguments to method ListParallelData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListParallelData.

=head1 SYNOPSIS

    my $translate = Paws->service('Translate');
    my $ListParallelDataResponse = $translate->ListParallelData(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListParallelDataResponse->NextToken;
    my $ParallelDataPropertiesList =
      $ListParallelDataResponse->ParallelDataPropertiesList;

    # Returns a L<Paws::Translate::ListParallelDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/translate/ListParallelData>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of parallel data resources returned for each
request.



=head2 NextToken => Str

A string that specifies the next page of results to return in a
paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListParallelData in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

