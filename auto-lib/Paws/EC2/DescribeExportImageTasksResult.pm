
package Paws::EC2::DescribeExportImageTasksResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ExportImageTask/;
  has ExportImageTasks => (is => 'ro', isa => ArrayRef[EC2_ExportImageTask]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ExportImageTasks' => {
                                       'class' => 'Paws::EC2::ExportImageTask',
                                       'type' => 'ArrayRef[EC2_ExportImageTask]'
                                     }
             },
  'NameInRequest' => {
                       'ExportImageTasks' => 'exportImageTaskSet',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeExportImageTasksResult

=head1 ATTRIBUTES


=head2 ExportImageTasks => ArrayRef[EC2_ExportImageTask]

Information about the export image tasks.


=head2 NextToken => Str

The token to use to get the next page of results. This value is C<null>
when there are no more results to return.


=head2 _request_id => Str


=cut

