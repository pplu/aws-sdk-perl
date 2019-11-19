# Generated from callresult_class.tt

package Paws::SES::GetIdentityNotificationAttributesResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SES::Types qw/SES_NotificationAttributes/;
  has NotificationAttributes => (is => 'ro', isa => SES_NotificationAttributes, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NotificationAttributes' => {
                                             'type' => 'SES_NotificationAttributes',
                                             'class' => 'Paws::SES::NotificationAttributes'
                                           }
             },
  'IsRequired' => {
                    'NotificationAttributes' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetIdentityNotificationAttributesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> NotificationAttributes => SES_NotificationAttributes

A map of Identity to IdentityNotificationAttributes.


=head2 _request_id => Str


=cut

