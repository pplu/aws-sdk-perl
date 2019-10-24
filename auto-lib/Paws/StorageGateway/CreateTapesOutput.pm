# Generated from json/callresult_class.tt

package Paws::StorageGateway::CreateTapesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::StorageGateway::Types qw//;
  has TapeARNs => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TapeARNs' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateTapesOutput

=head1 ATTRIBUTES


=head2 TapeARNs => ArrayRef[Str|Undef]

A list of unique Amazon Resource Names (ARNs) that represents the
virtual tapes that were created.


=head2 _request_id => Str


=cut

1;