
package Paws::EC2::DisassociateClientVpnTargetNetworkResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_AssociationStatus/;
  has AssociationId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => EC2_AssociationStatus);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AssociationId' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'class' => 'Paws::EC2::AssociationStatus',
                             'type' => 'EC2_AssociationStatus'
                           }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'AssociationId' => 'associationId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisassociateClientVpnTargetNetworkResult

=head1 ATTRIBUTES


=head2 AssociationId => Str

The ID of the target network association.


=head2 Status => EC2_AssociationStatus

The current state of the target network association.


=head2 _request_id => Str


=cut

