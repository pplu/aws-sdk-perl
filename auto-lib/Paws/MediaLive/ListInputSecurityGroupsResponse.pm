
package Paws::MediaLive::ListInputSecurityGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaLive::Types qw/MediaLive_InputSecurityGroup/;
  has InputSecurityGroups => (is => 'ro', isa => ArrayRef[MediaLive_InputSecurityGroup]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InputSecurityGroups' => {
                                          'class' => 'Paws::MediaLive::InputSecurityGroup',
                                          'type' => 'ArrayRef[MediaLive_InputSecurityGroup]'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'InputSecurityGroups' => 'inputSecurityGroups'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListInputSecurityGroupsResponse

=head1 ATTRIBUTES


=head2 InputSecurityGroups => ArrayRef[MediaLive_InputSecurityGroup]

List of input security groups


=head2 NextToken => Str




=head2 _request_id => Str


=cut

