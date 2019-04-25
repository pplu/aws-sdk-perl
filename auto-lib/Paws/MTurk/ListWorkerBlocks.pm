
package Paws::MTurk::ListWorkerBlocks;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkerBlocks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::ListWorkerBlocksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListWorkerBlocks - Arguments for method ListWorkerBlocks on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkerBlocks on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method ListWorkerBlocks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkerBlocks.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $ListWorkerBlocksResponse = $mturk -requester->ListWorkerBlocks(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListWorkerBlocksResponse->NextToken;
    my $NumResults   = $ListWorkerBlocksResponse->NumResults;
    my $WorkerBlocks = $ListWorkerBlocksResponse->WorkerBlocks;

    # Returns a L<Paws::MTurk::ListWorkerBlocksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/ListWorkerBlocks>

=head1 ATTRIBUTES


=head2 MaxResults => Int





=head2 NextToken => Str

Pagination token




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkerBlocks in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

