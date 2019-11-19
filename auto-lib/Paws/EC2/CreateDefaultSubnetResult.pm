
package Paws::EC2::CreateDefaultSubnetResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_Subnet/;
  has Subnet => (is => 'ro', isa => EC2_Subnet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Subnet' => {
                             'class' => 'Paws::EC2::Subnet',
                             'type' => 'EC2_Subnet'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Subnet' => 'subnet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateDefaultSubnetResult

=head1 ATTRIBUTES


=head2 Subnet => EC2_Subnet

Information about the subnet.


=head2 _request_id => Str


=cut

