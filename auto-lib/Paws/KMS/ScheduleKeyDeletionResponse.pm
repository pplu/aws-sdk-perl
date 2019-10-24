# Generated from json/callresult_class.tt

package Paws::KMS::ScheduleKeyDeletionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KMS::Types qw//;
  has DeletionDate => (is => 'ro', isa => Str);
  has KeyId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'KeyId' => {
                            'type' => 'Str'
                          },
               'DeletionDate' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KMS::ScheduleKeyDeletionResponse

=head1 ATTRIBUTES


=head2 DeletionDate => Str

The date and time after which AWS KMS deletes the customer master key
(CMK).


=head2 KeyId => Str

The unique identifier of the customer master key (CMK) for which
deletion is scheduled.


=head2 _request_id => Str


=cut

1;