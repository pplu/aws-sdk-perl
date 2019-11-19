# Generated from json/callresult_class.tt

package Paws::Translate::ImportTerminologyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Translate::Types qw/Translate_TerminologyProperties/;
  has TerminologyProperties => (is => 'ro', isa => Translate_TerminologyProperties);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TerminologyProperties' => {
                                            'type' => 'Translate_TerminologyProperties',
                                            'class' => 'Paws::Translate::TerminologyProperties'
                                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Translate::ImportTerminologyResponse

=head1 ATTRIBUTES


=head2 TerminologyProperties => Translate_TerminologyProperties

The properties of the custom terminology being imported.


=head2 _request_id => Str


=cut

1;