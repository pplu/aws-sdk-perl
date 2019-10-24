
package Paws::EC2::DescribeDhcpOptionsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_DhcpOptions/;
  has DhcpOptions => (is => 'ro', isa => ArrayRef[EC2_DhcpOptions]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DhcpOptions' => {
                                  'class' => 'Paws::EC2::DhcpOptions',
                                  'type' => 'ArrayRef[EC2_DhcpOptions]'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'DhcpOptions' => 'dhcpOptionsSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeDhcpOptionsResult

=head1 ATTRIBUTES


=head2 DhcpOptions => ArrayRef[EC2_DhcpOptions]

Information about one or more DHCP options sets.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

