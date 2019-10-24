# Generated from callresult_class.tt

package Paws::RDS::DescribeDBLogFilesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_DescribeDBLogFilesDetails/;
  has DescribeDBLogFiles => (is => 'ro', isa => ArrayRef[RDS_DescribeDBLogFilesDetails]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DescribeDBLogFiles' => {
                                         'class' => 'Paws::RDS::DescribeDBLogFilesDetails',
                                         'type' => 'ArrayRef[RDS_DescribeDBLogFilesDetails]'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'DescribeDBLogFiles' => 'DescribeDBLogFilesDetails'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBLogFilesResponse

=head1 ATTRIBUTES


=head2 DescribeDBLogFiles => ArrayRef[RDS_DescribeDBLogFilesDetails]

The DB log files returned.


=head2 Marker => Str

A pagination token that can be used in a subsequent DescribeDBLogFiles
request.


=head2 _request_id => Str


=cut

