
package Paws::MTurk::ListBonusPayments;
  use Moose;
  has AssignmentId => (is => 'ro', isa => 'Str');
  has HITId => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBonusPayments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::ListBonusPaymentsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListBonusPayments - Arguments for method ListBonusPayments on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBonusPayments on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method ListBonusPayments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBonusPayments.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $ListBonusPaymentsResponse = $mturk -requester->ListBonusPayments(
      AssignmentId => 'MyEntityId',           # OPTIONAL
      HITId        => 'MyEntityId',           # OPTIONAL
      MaxResults   => 1,                      # OPTIONAL
      NextToken    => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $BonusPayments = $ListBonusPaymentsResponse->BonusPayments;
    my $NextToken     = $ListBonusPaymentsResponse->NextToken;
    my $NumResults    = $ListBonusPaymentsResponse->NumResults;

    # Returns a L<Paws::MTurk::ListBonusPaymentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/ListBonusPayments>

=head1 ATTRIBUTES


=head2 AssignmentId => Str

The ID of the assignment associated with the bonus payments to
retrieve. If specified, only bonus payments for the given assignment
are returned. Either the HITId parameter or the AssignmentId parameter
must be specified



=head2 HITId => Str

The ID of the HIT associated with the bonus payments to retrieve. If
not specified, all bonus payments for all assignments for the given HIT
are returned. Either the HITId parameter or the AssignmentId parameter
must be specified



=head2 MaxResults => Int





=head2 NextToken => Str

Pagination token




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBonusPayments in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

