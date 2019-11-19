# Generated from json/callresult_class.tt

package Paws::Discovery::DescribeImportTasksResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Discovery::Types qw/Discovery_ImportTask/;
  has NextToken => (is => 'ro', isa => Str);
  has Tasks => (is => 'ro', isa => ArrayRef[Discovery_ImportTask]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tasks' => 'tasks',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Tasks' => {
                            'type' => 'ArrayRef[Discovery_ImportTask]',
                            'class' => 'Paws::Discovery::ImportTask'
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

Paws::Discovery::DescribeImportTasksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to request the next page of results.


=head2 Tasks => ArrayRef[Discovery_ImportTask]

A returned array of import tasks that match any applied filters, up to
the specified number of maximum results.


=head2 _request_id => Str


=cut

1;