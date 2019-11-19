# Generated from callresult_class.tt

package Paws::STS::GetAccessKeyInfoResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::STS::Types qw//;
  has Account => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Account' => {
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

Paws::STS::GetAccessKeyInfoResponse

=head1 ATTRIBUTES


=head2 Account => Str

The number used to identify the AWS account.


=head2 _request_id => Str


=cut

