
package Paws::EC2::DescribeImportImageTasksResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ImportImageTask/;
  has ImportImageTasks => (is => 'ro', isa => ArrayRef[EC2_ImportImageTask]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ImportImageTasks' => {
                                       'class' => 'Paws::EC2::ImportImageTask',
                                       'type' => 'ArrayRef[EC2_ImportImageTask]'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ImportImageTasks' => 'importImageTaskSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeImportImageTasksResult

=head1 ATTRIBUTES


=head2 ImportImageTasks => ArrayRef[EC2_ImportImageTask]

A list of zero or more import image tasks that are currently active or
were completed or canceled in the previous 7 days.


=head2 NextToken => Str

The token to use to get the next page of results. This value is C<null>
when there are no more results to return.


=head2 _request_id => Str


=cut

