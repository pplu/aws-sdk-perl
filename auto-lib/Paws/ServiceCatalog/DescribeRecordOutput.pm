# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::DescribeRecordOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_RecordDetail ServiceCatalog_RecordOutput/;
  has NextPageToken => (is => 'ro', isa => Str);
  has RecordDetail => (is => 'ro', isa => ServiceCatalog_RecordDetail);
  has RecordOutputs => (is => 'ro', isa => ArrayRef[ServiceCatalog_RecordOutput]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RecordOutputs' => {
                                    'class' => 'Paws::ServiceCatalog::RecordOutput',
                                    'type' => 'ArrayRef[ServiceCatalog_RecordOutput]'
                                  },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RecordDetail' => {
                                   'class' => 'Paws::ServiceCatalog::RecordDetail',
                                   'type' => 'ServiceCatalog_RecordDetail'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeRecordOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 RecordDetail => ServiceCatalog_RecordDetail

Information about the product.


=head2 RecordOutputs => ArrayRef[ServiceCatalog_RecordOutput]

Information about the product created as the result of a request. For
example, the output for a CloudFormation-backed product that creates an
S3 bucket would include the S3 bucket URL.


=head2 _request_id => Str


=cut

1;