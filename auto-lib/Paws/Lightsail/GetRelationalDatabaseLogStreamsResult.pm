# Generated from json/callresult_class.tt

package Paws::Lightsail::GetRelationalDatabaseLogStreamsResult;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::Lightsail::Types qw//;
  has LogStreams => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LogStreams' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'LogStreams' => 'logStreams'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseLogStreamsResult

=head1 ATTRIBUTES


=head2 LogStreams => ArrayRef[Str|Undef]

An object describing the result of your get relational database log
streams request.


=head2 _request_id => Str


=cut

1;