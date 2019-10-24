# Generated from json/callresult_class.tt

package Paws::Datasync::CreateTaskResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Datasync::Types qw//;
  has TaskArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TaskArn' => {
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

Paws::Datasync::CreateTaskResponse

=head1 ATTRIBUTES


=head2 TaskArn => Str

The Amazon Resource Name (ARN) of the task.


=head2 _request_id => Str


=cut

1;