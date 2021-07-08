
package Paws::RedShift::PartnerIntegrationOutputMessage;
  use Moose;
  has DatabaseName => (is => 'ro', isa => 'Str');
  has PartnerName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::PartnerIntegrationOutputMessage

=head1 ATTRIBUTES


=head2 DatabaseName => Str

The name of the database that receives data from the partner.


=head2 PartnerName => Str

The name of the partner that is authorized to send data.


=head2 _request_id => Str


=cut

