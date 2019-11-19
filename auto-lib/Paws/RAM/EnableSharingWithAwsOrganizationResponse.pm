
package Paws::RAM::EnableSharingWithAwsOrganizationResponse;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::RAM::Types qw//;
  has ReturnValue => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ReturnValue' => 'returnValue'
                     },
  'types' => {
               'ReturnValue' => {
                                  'type' => 'Bool'
                                },
               '_request_id' => {
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

Paws::RAM::EnableSharingWithAwsOrganizationResponse

=head1 ATTRIBUTES


=head2 ReturnValue => Bool

Indicates whether the request succeeded.


=head2 _request_id => Str


=cut

