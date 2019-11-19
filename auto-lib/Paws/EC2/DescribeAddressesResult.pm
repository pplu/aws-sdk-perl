
package Paws::EC2::DescribeAddressesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_Address/;
  has Addresses => (is => 'ro', isa => ArrayRef[EC2_Address]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Addresses' => 'addressesSet'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Addresses' => {
                                'type' => 'ArrayRef[EC2_Address]',
                                'class' => 'Paws::EC2::Address'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeAddressesResult

=head1 ATTRIBUTES


=head2 Addresses => ArrayRef[EC2_Address]

Information about the Elastic IP addresses.


=head2 _request_id => Str


=cut

