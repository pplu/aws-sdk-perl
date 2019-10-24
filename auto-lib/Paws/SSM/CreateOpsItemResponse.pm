# Generated from json/callresult_class.tt

package Paws::SSM::CreateOpsItemResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has OpsItemId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OpsItemId' => {
                                'type' => 'Str'
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

Paws::SSM::CreateOpsItemResponse

=head1 ATTRIBUTES


=head2 OpsItemId => Str

The ID of the OpsItem.


=head2 _request_id => Str


=cut

1;