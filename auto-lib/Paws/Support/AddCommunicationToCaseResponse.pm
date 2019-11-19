# Generated from json/callresult_class.tt

package Paws::Support::AddCommunicationToCaseResponse;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Support::Types qw//;
  has Result => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Result' => {
                             'type' => 'Bool'
                           }
             },
  'NameInRequest' => {
                       'Result' => 'result'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Support::AddCommunicationToCaseResponse

=head1 ATTRIBUTES


=head2 Result => Bool

True if AddCommunicationToCase succeeds. Otherwise, returns an error.


=head2 _request_id => Str


=cut

1;