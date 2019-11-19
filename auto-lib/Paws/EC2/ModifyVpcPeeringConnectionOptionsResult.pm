
package Paws::EC2::ModifyVpcPeeringConnectionOptionsResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_PeeringConnectionOptions/;
  has AccepterPeeringConnectionOptions => (is => 'ro', isa => EC2_PeeringConnectionOptions);
  has RequesterPeeringConnectionOptions => (is => 'ro', isa => EC2_PeeringConnectionOptions);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'RequesterPeeringConnectionOptions' => 'requesterPeeringConnectionOptions',
                       'AccepterPeeringConnectionOptions' => 'accepterPeeringConnectionOptions'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AccepterPeeringConnectionOptions' => {
                                                       'type' => 'EC2_PeeringConnectionOptions',
                                                       'class' => 'Paws::EC2::PeeringConnectionOptions'
                                                     },
               'RequesterPeeringConnectionOptions' => {
                                                        'type' => 'EC2_PeeringConnectionOptions',
                                                        'class' => 'Paws::EC2::PeeringConnectionOptions'
                                                      }
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

