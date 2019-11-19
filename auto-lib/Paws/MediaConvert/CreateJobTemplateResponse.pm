
package Paws::MediaConvert::CreateJobTemplateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw/MediaConvert_JobTemplate/;
  has JobTemplate => (is => 'ro', isa => MediaConvert_JobTemplate);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'JobTemplate' => 'jobTemplate'
                     },
  'types' => {
               'JobTemplate' => {
                                  'type' => 'MediaConvert_JobTemplate',
                                  'class' => 'Paws::MediaConvert::JobTemplate'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CreateJobTemplateResponse

=head1 ATTRIBUTES


=head2 JobTemplate => MediaConvert_JobTemplate

A job template is a pre-made set of encoding instructions that you can
use to quickly create a job.


=head2 _request_id => Str


=cut

