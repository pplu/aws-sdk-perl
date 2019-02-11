
package Paws::Translate::ListTerminologies;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTerminologies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Translate::ListTerminologiesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::ListTerminologies - Arguments for method ListTerminologies on L<Paws::Translate>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTerminologies on the
L<Amazon Translate|Paws::Translate> service. Use the attributes of this class
as arguments to method ListTerminologies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTerminologies.

=head1 SYNOPSIS

    my $translate = Paws->service('Translate');
    my $ListTerminologiesResponse = $translate->ListTerminologies(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTerminologiesResponse->NextToken;
    my $TerminologyPropertiesList =
      $ListTerminologiesResponse->TerminologyPropertiesList;

    # Returns a L<Paws::Translate::ListTerminologiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/translate/ListTerminologies>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of custom terminologies returned per list request.



=head2 NextToken => Str

If the result of the request to ListTerminologies was truncated,
include the NextToken to fetch the next group of custom terminologies.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTerminologies in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

