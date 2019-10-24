# Generated from json/callresult_class.tt

package Paws::Translate::GetTerminologyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Translate::Types qw/Translate_TerminologyDataLocation Translate_TerminologyProperties/;
  has TerminologyDataLocation => (is => 'ro', isa => Translate_TerminologyDataLocation);
  has TerminologyProperties => (is => 'ro', isa => Translate_TerminologyProperties);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TerminologyProperties' => {
                                            'class' => 'Paws::Translate::TerminologyProperties',
                                            'type' => 'Translate_TerminologyProperties'
                                          },
               'TerminologyDataLocation' => {
                                              'class' => 'Paws::Translate::TerminologyDataLocation',
                                              'type' => 'Translate_TerminologyDataLocation'
                                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Translate::GetTerminologyResponse

=head1 ATTRIBUTES


=head2 TerminologyDataLocation => Translate_TerminologyDataLocation

The data location of the custom terminology being retrieved. The custom
terminology file is returned in a presigned url that has a 30 minute
expiration.


=head2 TerminologyProperties => Translate_TerminologyProperties

The properties of the custom terminology being retrieved.


=head2 _request_id => Str


=cut

1;