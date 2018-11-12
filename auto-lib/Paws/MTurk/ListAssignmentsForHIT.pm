
package Paws::MTurk::ListAssignmentsForHIT;
  use Moose;
  has AssignmentStatuses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has HITId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssignmentsForHIT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::ListAssignmentsForHITResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListAssignmentsForHIT - Arguments for method ListAssignmentsForHIT on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssignmentsForHIT on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method ListAssignmentsForHIT.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssignmentsForHIT.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $ListAssignmentsForHITResponse =
      $mturk -requester->ListAssignmentsForHIT(
      HITId              => 'MyEntityId',
      AssignmentStatuses => [
        'Submitted', ...    # values: Submitted, Approved, Rejected
      ],                    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      );

    # Results:
    my $Assignments = $ListAssignmentsForHITResponse->Assignments;
    my $NextToken   = $ListAssignmentsForHITResponse->NextToken;
    my $NumResults  = $ListAssignmentsForHITResponse->NumResults;

    # Returns a L<Paws::MTurk::ListAssignmentsForHITResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/ListAssignmentsForHIT>

=head1 ATTRIBUTES


=head2 AssignmentStatuses => ArrayRef[Str|Undef]

The status of the assignments to return: Submitted | Approved |
Rejected



=head2 B<REQUIRED> HITId => Str

The ID of the HIT.



=head2 MaxResults => Int





=head2 NextToken => Str

Pagination token




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssignmentsForHIT in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

