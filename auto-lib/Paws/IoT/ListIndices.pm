
package Paws::IoT::ListIndices;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIndices');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/indices');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListIndicesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListIndices - Arguments for method ListIndices on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIndices on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListIndices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIndices.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListIndicesResponse = $iot->ListIndices(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $IndexNames = $ListIndicesResponse->IndexNames;
    my $NextToken  = $ListIndicesResponse->NextToken;

    # Returns a L<Paws::IoT::ListIndicesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListIndices>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return at one time.



=head2 NextToken => Str

The token used to get the next set of results, or B<null> if there are
no additional results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIndices in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

