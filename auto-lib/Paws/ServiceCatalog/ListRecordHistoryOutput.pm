# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::ListRecordHistoryOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_RecordDetail/;
  has NextPageToken => (is => 'ro', isa => Str);
  has RecordDetails => (is => 'ro', isa => ArrayRef[ServiceCatalog_RecordDetail]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'RecordDetails' => {
                                    'type' => 'ArrayRef[ServiceCatalog_RecordDetail]',
                                    'class' => 'Paws::ServiceCatalog::RecordDetail'
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

Paws::ServiceCatalog::ListRecordHistoryOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 RecordDetails => ArrayRef[ServiceCatalog_RecordDetail]

The records, in reverse chronological order.


=head2 _request_id => Str


=cut

1;