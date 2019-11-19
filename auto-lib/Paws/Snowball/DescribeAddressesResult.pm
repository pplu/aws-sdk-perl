# Generated from json/callresult_class.tt

package Paws::Snowball::DescribeAddressesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Snowball::Types qw/Snowball_Address/;
  has Addresses => (is => 'ro', isa => ArrayRef[Snowball_Address]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Addresses' => {
                                'class' => 'Paws::Snowball::Address',
                                'type' => 'ArrayRef[Snowball_Address]'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Snowball::DescribeAddressesResult

=head1 ATTRIBUTES


=head2 Addresses => ArrayRef[Snowball_Address]

The Snowball shipping addresses that were created for this account.


=head2 NextToken => Str

HTTP requests are stateless. If you use the automatically generated
C<NextToken> value in your next C<DescribeAddresses> call, your list of
returned addresses will start from this point in the array.


=head2 _request_id => Str


=cut

1;