# Generated from json/callresult_class.tt

package Paws::StorageGateway::DescribeChapCredentialsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StorageGateway::Types qw/StorageGateway_ChapInfo/;
  has ChapCredentials => (is => 'ro', isa => ArrayRef[StorageGateway_ChapInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ChapCredentials' => {
                                      'type' => 'ArrayRef[StorageGateway_ChapInfo]',
                                      'class' => 'Paws::StorageGateway::ChapInfo'
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

Paws::StorageGateway::DescribeChapCredentialsOutput

=head1 ATTRIBUTES


=head2 ChapCredentials => ArrayRef[StorageGateway_ChapInfo]

An array of ChapInfo objects that represent CHAP credentials. Each
object in the array contains CHAP credential information for one
target-initiator pair. If no CHAP credentials are set, an empty array
is returned. CHAP credential information is provided in a JSON object
with the following fields:

=over

=item *

B<InitiatorName>: The iSCSI initiator that connects to the target.

=item *

B<SecretToAuthenticateInitiator>: The secret key that the initiator
(for example, the Windows client) must provide to participate in mutual
CHAP with the target.

=item *

B<SecretToAuthenticateTarget>: The secret key that the target must
provide to participate in mutual CHAP with the initiator (e.g. Windows
client).

=item *

B<TargetARN>: The Amazon Resource Name (ARN) of the storage volume.

=back



=head2 _request_id => Str


=cut

1;