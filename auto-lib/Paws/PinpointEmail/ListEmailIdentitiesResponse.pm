
package Paws::PinpointEmail::ListEmailIdentitiesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::PinpointEmail::Types qw/PinpointEmail_IdentityInfo/;
  has EmailIdentities => (is => 'ro', isa => ArrayRef[PinpointEmail_IdentityInfo]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'EmailIdentities' => {
                                      'type' => 'ArrayRef[PinpointEmail_IdentityInfo]',
                                      'class' => 'Paws::PinpointEmail::IdentityInfo'
                                    }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::ListEmailIdentitiesResponse

=head1 ATTRIBUTES


=head2 EmailIdentities => ArrayRef[PinpointEmail_IdentityInfo]

An array that includes all of the identities associated with your
Amazon Pinpoint account.


=head2 NextToken => Str

A token that indicates that there are additional configuration sets to
list. To view additional configuration sets, issue another request to
C<ListEmailIdentities>, and pass this token in the C<NextToken>
parameter.


=head2 _request_id => Str


=cut

