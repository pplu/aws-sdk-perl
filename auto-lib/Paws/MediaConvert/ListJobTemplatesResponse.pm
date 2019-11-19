
package Paws::MediaConvert::ListJobTemplatesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaConvert::Types qw/MediaConvert_JobTemplate/;
  has JobTemplates => (is => 'ro', isa => ArrayRef[MediaConvert_JobTemplate]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'JobTemplates' => 'jobTemplates'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'JobTemplates' => {
                                   'class' => 'Paws::MediaConvert::JobTemplate',
                                   'type' => 'ArrayRef[MediaConvert_JobTemplate]'
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

Paws::MediaConvert::ListJobTemplatesResponse

=head1 ATTRIBUTES


=head2 JobTemplates => ArrayRef[MediaConvert_JobTemplate]

List of Job templates.


=head2 NextToken => Str

Use this string to request the next batch of job templates.


=head2 _request_id => Str


=cut

