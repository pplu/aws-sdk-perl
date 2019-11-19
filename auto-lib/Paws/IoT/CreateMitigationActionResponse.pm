
package Paws::IoT::CreateMitigationActionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has ActionArn => (is => 'ro', isa => Str);
  has ActionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ActionId' => 'actionId',
                       'ActionArn' => 'actionArn'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ActionArn' => {
                                'type' => 'Str'
                              },
               'ActionId' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateMitigationActionResponse

=head1 ATTRIBUTES


=head2 ActionArn => Str

The ARN for the new mitigation action.


=head2 ActionId => Str

A unique identifier for the new mitigation action.


=head2 _request_id => Str


=cut

