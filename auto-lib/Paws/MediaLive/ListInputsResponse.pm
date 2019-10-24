
package Paws::MediaLive::ListInputsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaLive::Types qw/MediaLive_Input/;
  has Inputs => (is => 'ro', isa => ArrayRef[MediaLive_Input]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Inputs' => {
                             'class' => 'Paws::MediaLive::Input',
                             'type' => 'ArrayRef[MediaLive_Input]'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Inputs' => 'inputs',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListInputsResponse

=head1 ATTRIBUTES


=head2 Inputs => ArrayRef[MediaLive_Input]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

