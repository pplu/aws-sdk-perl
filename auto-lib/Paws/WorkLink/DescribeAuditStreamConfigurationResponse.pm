
package Paws::WorkLink::DescribeAuditStreamConfigurationResponse;
  use Moose;
  has AuditStreamArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::DescribeAuditStreamConfigurationResponse

=head1 ATTRIBUTES


=head2 AuditStreamArn => Str

The ARN of the Amazon Kinesis data stream that will receive the audit
events.


=head2 _request_id => Str


=cut

