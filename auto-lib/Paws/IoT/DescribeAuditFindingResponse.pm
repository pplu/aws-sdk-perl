
package Paws::IoT::DescribeAuditFindingResponse;
  use Moose;
  has Finding => (is => 'ro', isa => 'Paws::IoT::AuditFinding', traits => ['NameInRequest'], request_name => 'finding');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeAuditFindingResponse

=head1 ATTRIBUTES


=head2 Finding => L<Paws::IoT::AuditFinding>




=head2 _request_id => Str


=cut

