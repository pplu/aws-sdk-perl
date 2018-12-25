
package Paws::StepFunctions::ListExecutions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has StateMachineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineArn' , required => 1);
  has StatusFilter => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusFilter' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::ListExecutionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::ListExecutions - Arguments for method ListExecutions on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListExecutions on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method ListExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListExecutions.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $ListExecutionsOutput = $states->ListExecutions(
      StateMachineArn => 'MyArn',
      MaxResults      => 1,                # OPTIONAL
      NextToken       => 'MyPageToken',    # OPTIONAL
      StatusFilter    => 'RUNNING',        # OPTIONAL
    );

    # Results:
    my $Executions = $ListExecutionsOutput->Executions;
    my $NextToken  = $ListExecutionsOutput->NextToken;

    # Returns a L<Paws::StepFunctions::ListExecutionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/states/ListExecutions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results that are returned per call. You can use
C<nextToken> to obtain further pages of results. The default is 100 and
the maximum allowed page size is 1000. A value of 0 uses the default.

This is only an upper limit. The actual number of results returned per
call might be fewer than the specified maximum.



=head2 NextToken => Str

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours. Using an expired pagination token will return an I<HTTP 400
InvalidToken> error.



=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) of the state machine whose executions is
listed.



=head2 StatusFilter => Str

If specified, only list the executions whose current execution status
matches the given filter.

Valid values are: C<"RUNNING">, C<"SUCCEEDED">, C<"FAILED">, C<"TIMED_OUT">, C<"ABORTED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListExecutions in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

