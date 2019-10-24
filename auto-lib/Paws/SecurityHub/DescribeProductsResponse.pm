
package Paws::SecurityHub::DescribeProductsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SecurityHub::Types qw/SecurityHub_Product/;
  has NextToken => (is => 'ro', isa => Str);
  has Products => (is => 'ro', isa => ArrayRef[SecurityHub_Product], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Products' => {
                               'class' => 'Paws::SecurityHub::Product',
                               'type' => 'ArrayRef[SecurityHub_Product]'
                             },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Products' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DescribeProductsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that is required for pagination.


=head2 B<REQUIRED> Products => ArrayRef[SecurityHub_Product]

A list of products, including details for each product.


=head2 _request_id => Str


=cut

