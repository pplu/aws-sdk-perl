
package Paws::EC2::GetFlowLogsIntegrationTemplateResult;
  use Moose;
  has Result => (is => 'ro', isa => 'Str', request_name => 'result', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetFlowLogsIntegrationTemplateResult

=head1 ATTRIBUTES


=head2 Result => Str

The generated CloudFormation template.


=head2 _request_id => Str


=cut

