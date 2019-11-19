# Generated from json/callresult_class.tt

package Paws::Discovery::StartImportTaskResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Discovery::Types qw/Discovery_ImportTask/;
  has Task => (is => 'ro', isa => Discovery_ImportTask);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Task' => 'task'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Task' => {
                           'type' => 'Discovery_ImportTask',
                           'class' => 'Paws::Discovery::ImportTask'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StartImportTaskResponse

=head1 ATTRIBUTES


=head2 Task => Discovery_ImportTask

An array of information related to the import task request including
status information, times, IDs, the Amazon S3 Object URL for the import
file, and more.


=head2 _request_id => Str


=cut

1;