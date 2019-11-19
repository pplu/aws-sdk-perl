# Generated from json/callresult_class.tt

package Paws::SSM::GetOpsItemResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw/SSM_OpsItem/;
  has OpsItem => (is => 'ro', isa => SSM_OpsItem);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OpsItem' => {
                              'class' => 'Paws::SSM::OpsItem',
                              'type' => 'SSM_OpsItem'
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

Paws::SSM::GetOpsItemResponse

=head1 ATTRIBUTES


=head2 OpsItem => SSM_OpsItem

The OpsItem.


=head2 _request_id => Str


=cut

1;