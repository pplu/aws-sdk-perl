# Generated from json/callresult_class.tt

package Paws::ECS::PutAccountSettingResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECS::Types qw/ECS_Setting/;
  has Setting => (is => 'ro', isa => ECS_Setting);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Setting' => 'setting'
                     },
  'types' => {
               'Setting' => {
                              'type' => 'ECS_Setting',
                              'class' => 'Paws::ECS::Setting'
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

Paws::ECS::PutAccountSettingResponse

=head1 ATTRIBUTES


=head2 Setting => ECS_Setting

The current account setting for a resource.


=head2 _request_id => Str


=cut

1;