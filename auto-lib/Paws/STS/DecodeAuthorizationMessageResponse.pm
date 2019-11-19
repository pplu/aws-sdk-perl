# Generated from callresult_class.tt

package Paws::STS::DecodeAuthorizationMessageResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::STS::Types qw//;
  has DecodedMessage => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DecodedMessage' => {
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

Paws::STS::DecodeAuthorizationMessageResponse

=head1 ATTRIBUTES


=head2 DecodedMessage => Str

An XML document that contains the decoded message.


=head2 _request_id => Str


=cut

