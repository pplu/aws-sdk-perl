
package Paws::EC2::CreateVpcPeeringConnectionResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_VpcPeeringConnection/;
  has VpcPeeringConnection => (is => 'ro', isa => EC2_VpcPeeringConnection);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VpcPeeringConnection' => {
                                           'class' => 'Paws::EC2::VpcPeeringConnection',
                                           'type' => 'EC2_VpcPeeringConnection'
                                         }
             },
  'NameInRequest' => {
                       'VpcPeeringConnection' => 'vpcPeeringConnection'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpcPeeringConnectionResult

=head1 ATTRIBUTES


=head2 VpcPeeringConnection => EC2_VpcPeeringConnection

Information about the VPC peering connection.


=head2 _request_id => Str


=cut

