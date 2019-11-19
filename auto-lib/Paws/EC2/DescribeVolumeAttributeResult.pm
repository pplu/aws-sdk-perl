
package Paws::EC2::DescribeVolumeAttributeResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ProductCode EC2_AttributeBooleanValue/;
  has AutoEnableIO => (is => 'ro', isa => EC2_AttributeBooleanValue);
  has ProductCodes => (is => 'ro', isa => ArrayRef[EC2_ProductCode]);
  has VolumeId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AutoEnableIO' => {
                                   'type' => 'EC2_AttributeBooleanValue',
                                   'class' => 'Paws::EC2::AttributeBooleanValue'
                                 },
               'VolumeId' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ProductCodes' => {
                                   'class' => 'Paws::EC2::ProductCode',
                                   'type' => 'ArrayRef[EC2_ProductCode]'
                                 }
             },
  'NameInRequest' => {
                       'ProductCodes' => 'productCodes',
                       'VolumeId' => 'volumeId',
                       'AutoEnableIO' => 'autoEnableIO'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVolumeAttributeResult

=head1 ATTRIBUTES


=head2 AutoEnableIO => EC2_AttributeBooleanValue

The state of C<autoEnableIO> attribute.


=head2 ProductCodes => ArrayRef[EC2_ProductCode]

A list of product codes.


=head2 VolumeId => Str

The ID of the volume.


=head2 _request_id => Str


=cut

