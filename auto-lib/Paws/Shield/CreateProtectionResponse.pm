# Generated from json/callresult_class.tt

package Paws::Shield::CreateProtectionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Shield::Types qw//;
  has ProtectionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ProtectionId' => {
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


### main pod documentation begin ###

=head1 NAME

Paws::Shield::CreateProtectionResponse

=head1 ATTRIBUTES


=head2 ProtectionId => Str

The unique identifier (ID) for the Protection object that is created.


=head2 _request_id => Str


=cut

1;