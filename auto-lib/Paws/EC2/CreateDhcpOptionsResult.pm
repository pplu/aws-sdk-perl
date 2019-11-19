
package Paws::EC2::CreateDhcpOptionsResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_DhcpOptions/;
  has DhcpOptions => (is => 'ro', isa => EC2_DhcpOptions);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DhcpOptions' => {
                                  'type' => 'EC2_DhcpOptions',
                                  'class' => 'Paws::EC2::DhcpOptions'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DhcpOptions' => 'dhcpOptions'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateDhcpOptionsResult

=head1 ATTRIBUTES


=head2 DhcpOptions => EC2_DhcpOptions

A set of DHCP options.


=head2 _request_id => Str


=cut

