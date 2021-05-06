
package Paws::EC2::CreateFlowLogsResult;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest',]);
  has FlowLogIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'flowLogIdSet', traits => ['NameInRequest',]);
  has Unsuccessful => (is => 'ro', isa => 'ArrayRef[Paws::EC2::UnsuccessfulItem]', request_name => 'unsuccessful', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateFlowLogsResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.


=head2 FlowLogIds => ArrayRef[Str|Undef]

The IDs of the flow logs.


=head2 Unsuccessful => ArrayRef[L<Paws::EC2::UnsuccessfulItem>]

Information about the flow logs that could not be created successfully.


=head2 _request_id => Str


=cut

