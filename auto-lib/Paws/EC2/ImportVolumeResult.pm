
package Paws::EC2::ImportVolumeResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has ConversionTask => (is => 'ro', isa => 'Paws::EC2::ConversionTask', traits => ['Unwrapped'], xmlname => 'conversionTask');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportVolumeResult

=head1 ATTRIBUTES

=head2 ConversionTask => Paws::EC2::ConversionTask

  


=cut

