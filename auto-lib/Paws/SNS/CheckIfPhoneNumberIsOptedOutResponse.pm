# Generated from callresult_class.tt

package Paws::SNS::CheckIfPhoneNumberIsOptedOutResponse;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::SNS::Types qw//;
  has IsOptedOut => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IsOptedOut' => {
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

Paws::SNS::CheckIfPhoneNumberIsOptedOutResponse

=head1 ATTRIBUTES


=head2 IsOptedOut => Bool

Indicates whether the phone number is opted out:

=over

=item *

C<true> E<ndash> The phone number is opted out, meaning you cannot
publish SMS messages to it.

=item *

C<false> E<ndash> The phone number is opted in, meaning you can publish
SMS messages to it.

=back



=head2 _request_id => Str


=cut

