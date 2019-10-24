# Generated from json/callresult_class.tt

package Paws::Translate::ListTerminologiesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Translate::Types qw/Translate_TerminologyProperties/;
  has NextToken => (is => 'ro', isa => Str);
  has TerminologyPropertiesList => (is => 'ro', isa => ArrayRef[Translate_TerminologyProperties]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TerminologyPropertiesList' => {
                                                'class' => 'Paws::Translate::TerminologyProperties',
                                                'type' => 'ArrayRef[Translate_TerminologyProperties]'
                                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Translate::ListTerminologiesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response to the ListTerminologies was truncated, the NextToken
fetches the next group of custom terminologies.


=head2 TerminologyPropertiesList => ArrayRef[Translate_TerminologyProperties]

The properties list of the custom terminologies returned on the list
request.


=head2 _request_id => Str


=cut

1;