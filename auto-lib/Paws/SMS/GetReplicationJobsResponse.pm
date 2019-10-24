# Generated from json/callresult_class.tt

package Paws::SMS::GetReplicationJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SMS::Types qw/SMS_ReplicationJob/;
  has NextToken => (is => 'ro', isa => Str);
  has ReplicationJobList => (is => 'ro', isa => ArrayRef[SMS_ReplicationJob]);

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
               'ReplicationJobList' => {
                                         'class' => 'Paws::SMS::ReplicationJob',
                                         'type' => 'ArrayRef[SMS_ReplicationJob]'
                                       }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ReplicationJobList' => 'replicationJobList'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetReplicationJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
null when there are no more results to return.


=head2 ReplicationJobList => ArrayRef[SMS_ReplicationJob]

Information about the replication jobs.


=head2 _request_id => Str


=cut

1;