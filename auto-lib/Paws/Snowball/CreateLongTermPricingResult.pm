
package Paws::Snowball::CreateLongTermPricingResult;
  use Moose;
  has LongTermPricingId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::CreateLongTermPricingResult

=head1 ATTRIBUTES


=head2 LongTermPricingId => Str

The ID of the long-term pricing type for the device.


=head2 _request_id => Str


=cut

1;