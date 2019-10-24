# Generated from json/callresult_class.tt

package Paws::Datasync::StartTaskExecutionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Datasync::Types qw//;
  has TaskExecutionArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TaskExecutionArn' => {
                                       'type' => 'Str'
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

Paws::Datasync::StartTaskExecutionResponse

=head1 ATTRIBUTES


=head2 TaskExecutionArn => Str

The Amazon Resource Name (ARN) of the specific task execution that was
started.


=head2 _request_id => Str


=cut

1;