# Generated from json/callresult_class.tt

package Paws::Lightsail::GetActiveNamesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Lightsail::Types qw//;
  has ActiveNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextPageToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ActiveNames' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ActiveNames' => 'activeNames',
                       'NextPageToken' => 'nextPageToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetActiveNamesResult

=head1 ATTRIBUTES


=head2 ActiveNames => ArrayRef[Str|Undef]

The list of active names returned by the get active names request.


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your get
active names request.


=head2 _request_id => Str


=cut

1;