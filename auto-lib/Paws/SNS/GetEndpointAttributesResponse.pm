# Generated from callresult_class.tt

package Paws::SNS::GetEndpointAttributesResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SNS::Types qw/SNS_MapStringToString/;
  has Attributes => (is => 'ro', isa => SNS_MapStringToString);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'class' => 'Paws::SNS::MapStringToString',
                                 'type' => 'SNS_MapStringToString'
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

Paws::SNS::GetEndpointAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => SNS_MapStringToString

Attributes include the following:

=over

=item *

C<CustomUserData> E<ndash> arbitrary user data to associate with the
endpoint. Amazon SNS does not use this data. The data must be in UTF-8
format and less than 2KB.

=item *

C<Enabled> E<ndash> flag that enables/disables delivery to the
endpoint. Amazon SNS will set this to false when a notification service
indicates to Amazon SNS that the endpoint is invalid. Users can set it
back to true, typically after updating Token.

=item *

C<Token> E<ndash> device token, also referred to as a registration id,
for an app and mobile device. This is returned from the notification
service when an app and mobile device are registered with the
notification service.

=back



=head2 _request_id => Str


=cut

