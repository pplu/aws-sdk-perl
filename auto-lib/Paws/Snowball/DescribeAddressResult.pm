# Generated from json/callresult_class.tt

package Paws::Snowball::DescribeAddressResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Snowball::Types qw/Snowball_Address/;
  has Address => (is => 'ro', isa => Snowball_Address);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Address' => {
                              'type' => 'Snowball_Address',
                              'class' => 'Paws::Snowball::Address'
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

Paws::Snowball::DescribeAddressResult

=head1 ATTRIBUTES


=head2 Address => Snowball_Address

The address that you want the Snowball or Snowballs associated with a
specific job to be shipped to.


=head2 _request_id => Str


=cut

1;