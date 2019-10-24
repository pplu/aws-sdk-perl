# Generated from json/callresult_class.tt

package Paws::StorageGateway::ListLocalDisksOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StorageGateway::Types qw/StorageGateway_Disk/;
  has Disks => (is => 'ro', isa => ArrayRef[StorageGateway_Disk]);
  has GatewayARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Disks' => {
                            'class' => 'Paws::StorageGateway::Disk',
                            'type' => 'ArrayRef[StorageGateway_Disk]'
                          },
               'GatewayARN' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListLocalDisksOutput

=head1 ATTRIBUTES


=head2 Disks => ArrayRef[StorageGateway_Disk]

A JSON object containing the following fields:

=over

=item *

ListLocalDisksOutput$Disks

=back



=head2 GatewayARN => Str




=head2 _request_id => Str


=cut

1;