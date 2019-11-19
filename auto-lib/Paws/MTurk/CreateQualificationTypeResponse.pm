# Generated from json/callresult_class.tt

package Paws::MTurk::CreateQualificationTypeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MTurk::Types qw/MTurk_QualificationType/;
  has QualificationType => (is => 'ro', isa => MTurk_QualificationType);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'QualificationType' => {
                                        'type' => 'MTurk_QualificationType',
                                        'class' => 'Paws::MTurk::QualificationType'
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

Paws::MTurk::CreateQualificationTypeResponse

=head1 ATTRIBUTES


=head2 QualificationType => MTurk_QualificationType

The created Qualification type, returned as a QualificationType data
structure.


=head2 _request_id => Str


=cut

1;