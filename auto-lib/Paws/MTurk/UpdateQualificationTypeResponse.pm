# Generated from json/callresult_class.tt

package Paws::MTurk::UpdateQualificationTypeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MTurk::Types qw/MTurk_QualificationType/;
  has QualificationType => (is => 'ro', isa => MTurk_QualificationType);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'QualificationType' => {
                                        'class' => 'Paws::MTurk::QualificationType',
                                        'type' => 'MTurk_QualificationType'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MTurk::UpdateQualificationTypeResponse

=head1 ATTRIBUTES


=head2 QualificationType => MTurk_QualificationType

Contains a QualificationType data structure.


=head2 _request_id => Str


=cut

1;