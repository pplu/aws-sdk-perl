
package Paws::EC2::DescribeVolumeAttributeResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has AutoEnableIO => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'autoEnableIO');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVolumeAttributeResult

=head1 ATTRIBUTES

=head2 AutoEnableIO => Paws::EC2::AttributeBooleanValue

  

The state of C<autoEnableIO> attribute.









=head2 ProductCodes => ArrayRef[Paws::EC2::ProductCode]

  

A list of product codes.









=head2 VolumeId => Str

  

The ID of the volume.











=cut

