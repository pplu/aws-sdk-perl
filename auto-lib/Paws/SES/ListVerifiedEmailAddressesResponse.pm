# Generated from callresult_class.tt

package Paws::SES::ListVerifiedEmailAddressesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::SES::Types qw//;
  has VerifiedEmailAddresses => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VerifiedEmailAddresses' => {
                                             'type' => 'ArrayRef[Str|Undef]'
                                           }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ListVerifiedEmailAddressesResponse

=head1 ATTRIBUTES


=head2 VerifiedEmailAddresses => ArrayRef[Str|Undef]

A list of email addresses that have been verified.


=head2 _request_id => Str


=cut

