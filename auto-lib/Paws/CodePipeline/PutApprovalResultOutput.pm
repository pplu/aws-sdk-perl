
package Paws::CodePipeline::PutApprovalResultOutput;
  use Moose;
  has ApprovedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'approvedAt' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PutApprovalResultOutput

=head1 ATTRIBUTES


=head2 ApprovedAt => Str

The timestamp showing when the approval or rejection was submitted.


=head2 _request_id => Str


=cut

1;