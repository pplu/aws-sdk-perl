
package Paws::ImportExport::GetShippingLabelOutput;
  use Moose;
  has ShippingLabelURL => (is => 'ro', isa => 'Str');
  has Warning => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImportExport::GetShippingLabelOutput

=head1 ATTRIBUTES


=head2 ShippingLabelURL => Str




=head2 Warning => Str




=head2 _request_id => Str


=cut

