
package Paws::SESv2::ListEmailIdentitiesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SESv2::Types qw/SESv2_IdentityInfo/;
  has EmailIdentities => (is => 'ro', isa => ArrayRef[SESv2_IdentityInfo]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EmailIdentities' => {
                                      'type' => 'ArrayRef[SESv2_IdentityInfo]',
                                      'class' => 'Paws::SESv2::IdentityInfo'
                                    },
               'NextToken' => {
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListEmailIdentitiesResponse

=head1 ATTRIBUTES


=head2 EmailIdentities => ArrayRef[SESv2_IdentityInfo]

An array that includes all of the email identities associated with your
AWS account.


=head2 NextToken => Str

A token that indicates that there are additional configuration sets to
list. To view additional configuration sets, issue another request to
C<ListEmailIdentities>, and pass this token in the C<NextToken>
parameter.


=head2 _request_id => Str


=cut

