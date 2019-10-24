
package Paws::EC2::ModifyVpcPeeringConnectionOptionsResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_PeeringConnectionOptions/;
  has AccepterPeeringConnectionOptions => (is => 'ro', isa => EC2_PeeringConnectionOptions);
  has RequesterPeeringConnectionOptions => (is => 'ro', isa => EC2_PeeringConnectionOptions);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AccepterPeeringConnectionOptions' => {
                                                       'class' => 'Paws::EC2::PeeringConnectionOptions',
                                                       'type' => 'EC2_PeeringConnectionOptions'
                                                     },
               'RequesterPeeringConnectionOptions' => {
                                                        'class' => 'Paws::EC2::PeeringConnectionOptions',
                                                        'type' => 'EC2_PeeringConnectionOptions'
                                                      }
             },
  'NameInRequest' => {
                       'AccepterPeeringConnectionOptions' => 'accepterPeeringConnectionOptions',
                       'RequesterPeeringConnectionOptions' => 'requesterPeeringConnectionOptions'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVpcPeeringConnectionOptionsResult

=head1 ATTRIBUTES


=head2 AccepterPeeringConnectionOptions => EC2_PeeringConnectionOptions

Information about the VPC peering connection options for the accepter
VPC.


=head2 RequesterPeeringConnectionOptions => EC2_PeeringConnectionOptions

Information about the VPC peering connection options for the requester
VPC.


=head2 _request_id => Str


=cut

