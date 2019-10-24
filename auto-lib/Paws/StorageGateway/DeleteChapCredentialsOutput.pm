# Generated from json/callresult_class.tt

package Paws::StorageGateway::DeleteChapCredentialsOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw//;
  has InitiatorName => (is => 'ro', isa => Str);
  has TargetARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TargetARN' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InitiatorName' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DeleteChapCredentialsOutput

=head1 ATTRIBUTES


=head2 InitiatorName => Str

The iSCSI initiator that connects to the target.


=head2 TargetARN => Str

The Amazon Resource Name (ARN) of the target.


=head2 _request_id => Str


=cut

1;