
package Paws::MTurk::ListReviewPolicyResultsForHIT;
  use Moose;
  has HITId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PolicyLevels => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RetrieveActions => (is => 'ro', isa => 'Bool');
  has RetrieveResults => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReviewPolicyResultsForHIT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::ListReviewPolicyResultsForHITResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListReviewPolicyResultsForHIT - Arguments for method ListReviewPolicyResultsForHIT on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReviewPolicyResultsForHIT on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method ListReviewPolicyResultsForHIT.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReviewPolicyResultsForHIT.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $ListReviewPolicyResultsForHITResponse =
      $mturk -requester->ListReviewPolicyResultsForHIT(
      HITId        => 'MyEntityId',
      MaxResults   => 1,                      # OPTIONAL
      NextToken    => 'MyPaginationToken',    # OPTIONAL
      PolicyLevels => [
        'Assignment', ...                     # values: Assignment, HIT
      ],                                      # OPTIONAL
      RetrieveActions => 1,                   # OPTIONAL
      RetrieveResults => 1,                   # OPTIONAL
      );

    # Results:
    my $AssignmentReviewPolicy =
      $ListReviewPolicyResultsForHITResponse->AssignmentReviewPolicy;
    my $AssignmentReviewReport =
      $ListReviewPolicyResultsForHITResponse->AssignmentReviewReport;
    my $HITId = $ListReviewPolicyResultsForHITResponse->HITId;
    my $HITReviewPolicy =
      $ListReviewPolicyResultsForHITResponse->HITReviewPolicy;
    my $HITReviewReport =
      $ListReviewPolicyResultsForHITResponse->HITReviewReport;
    my $NextToken = $ListReviewPolicyResultsForHITResponse->NextToken;

    # Returns a L<Paws::MTurk::ListReviewPolicyResultsForHITResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/ListReviewPolicyResultsForHIT>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HITId => Str

The unique identifier of the HIT to retrieve review results for.



=head2 MaxResults => Int

Limit the number of results returned.



=head2 NextToken => Str

Pagination token



=head2 PolicyLevels => ArrayRef[Str|Undef]

The Policy Level(s) to retrieve review results for - HIT or Assignment.
If omitted, the default behavior is to retrieve all data for both
policy levels. For a list of all the described policies, see Review
Policies.



=head2 RetrieveActions => Bool

Specify if the operation should retrieve a list of the actions taken
executing the Review Policies and their outcomes.



=head2 RetrieveResults => Bool

Specify if the operation should retrieve a list of the results computed
by the Review Policies.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReviewPolicyResultsForHIT in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

