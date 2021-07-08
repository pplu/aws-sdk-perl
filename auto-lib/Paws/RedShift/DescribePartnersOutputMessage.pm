
package Paws::RedShift::DescribePartnersOutputMessage;
  use Moose;
  has PartnerIntegrationInfoList => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::PartnerIntegrationInfo]', request_name => 'PartnerIntegrationInfo', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribePartnersOutputMessage

=head1 ATTRIBUTES


=head2 PartnerIntegrationInfoList => ArrayRef[L<Paws::RedShift::PartnerIntegrationInfo>]

A list of partner integrations.


=head2 _request_id => Str


=cut

