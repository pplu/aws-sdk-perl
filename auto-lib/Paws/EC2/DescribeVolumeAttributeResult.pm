
package Paws::EC2::DescribeVolumeAttributeResult;
  use Moose;
  has AutoEnableIO => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', request_name => 'autoEnableIO', traits => ['NameInRequest',]);
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ProductCode]', request_name => 'productCodes', traits => ['NameInRequest',]);
  has VolumeId => (is => 'ro', isa => 'Str', request_name => 'volumeId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVolumeAttributeResult

=head1 ATTRIBUTES


=head2 AutoEnableIO => L<Paws::EC2::AttributeBooleanValue>

The state of C<autoEnableIO> attribute.


=head2 ProductCodes => ArrayRef[L<Paws::EC2::ProductCode>]

A list of product codes.


=head2 VolumeId => Str

The ID of the volume.


=head2 _request_id => Str


=cut

