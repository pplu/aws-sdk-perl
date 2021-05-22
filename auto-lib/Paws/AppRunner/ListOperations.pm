
package Paws::AppRunner::ListOperations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOperations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppRunner::ListOperationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::ListOperations - Arguments for method ListOperations on L<Paws::AppRunner>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOperations on the
L<AWS App Runner|Paws::AppRunner> service. Use the attributes of this class
as arguments to method ListOperations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOperations.

=head1 SYNOPSIS

    my $apprunner = Paws->service('AppRunner');
    my $ListOperationsResponse = $apprunner->ListOperations(
      ServiceArn => 'MyAppRunnerResourceArn',
      MaxResults => 1,                          # OPTIONAL
      NextToken  => 'MyString',                 # OPTIONAL
    );

    # Results:
    my $NextToken            = $ListOperationsResponse->NextToken;
    my $OperationSummaryList = $ListOperationsResponse->OperationSummaryList;

    # Returns a L<Paws::AppRunner::ListOperationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apprunner/ListOperations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to include in each response (result
page). It's used for a paginated request.

If you don't specify C<MaxResults>, the request retrieves all available
results in a single response.



=head2 NextToken => Str

A token from a previous result page. It's used for a paginated request.
The request retrieves the next result page. All other parameter values
must be identical to the ones specified in the initial request.

If you don't specify C<NextToken>, the request retrieves the first
result page.



=head2 B<REQUIRED> ServiceArn => Str

The Amazon Resource Name (ARN) of the App Runner service that you want
a list of operations for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOperations in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

