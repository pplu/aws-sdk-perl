# Generated from json/callresult_class.tt

package Paws::SSM::PutInventoryResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has Message => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Message' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::PutInventoryResult

=head1 ATTRIBUTES


=head2 Message => Str

Information about the request.


=head2 _request_id => Str


=cut

1;