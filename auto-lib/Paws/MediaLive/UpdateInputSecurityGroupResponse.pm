
package Paws::MediaLive::UpdateInputSecurityGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaLive::Types qw/MediaLive_InputSecurityGroup/;
  has SecurityGroup => (is => 'ro', isa => MediaLive_InputSecurityGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'SecurityGroup' => 'securityGroup'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SecurityGroup' => {
                                    'class' => 'Paws::MediaLive::InputSecurityGroup',
                                    'type' => 'MediaLive_InputSecurityGroup'
                                  }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateInputSecurityGroupResponse

=head1 ATTRIBUTES


=head2 SecurityGroup => MediaLive_InputSecurityGroup




=head2 _request_id => Str


=cut

