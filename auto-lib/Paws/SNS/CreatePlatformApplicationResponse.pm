# Generated from callresult_class.tt

package Paws::SNS::CreatePlatformApplicationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SNS::Types qw//;
  has PlatformApplicationArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PlatformApplicationArn' => {
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

Paws::SNS::CreatePlatformApplicationResponse

=head1 ATTRIBUTES


=head2 PlatformApplicationArn => Str

PlatformApplicationArn is returned.


=head2 _request_id => Str


=cut

