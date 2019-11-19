# Generated from json/callresult_class.tt

package Paws::Route53Domains::RetrieveDomainAuthCodeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Route53Domains::Types qw//;
  has AuthCode => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AuthCode' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'AuthCode' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::RetrieveDomainAuthCodeResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthCode => Str

The authorization code for the domain.


=head2 _request_id => Str


=cut

1;