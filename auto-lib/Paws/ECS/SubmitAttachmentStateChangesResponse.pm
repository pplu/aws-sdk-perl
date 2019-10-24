# Generated from json/callresult_class.tt

package Paws::ECS::SubmitAttachmentStateChangesResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECS::Types qw//;
  has Acknowledgment => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Acknowledgment' => {
                                     'type' => 'Str'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Acknowledgment' => 'acknowledgment'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::SubmitAttachmentStateChangesResponse

=head1 ATTRIBUTES


=head2 Acknowledgment => Str

Acknowledgement of the state change.


=head2 _request_id => Str


=cut

1;