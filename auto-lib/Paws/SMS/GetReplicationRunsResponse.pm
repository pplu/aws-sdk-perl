# Generated from json/callresult_class.tt

package Paws::SMS::GetReplicationRunsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SMS::Types qw/SMS_ReplicationRun SMS_ReplicationJob/;
  has NextToken => (is => 'ro', isa => Str);
  has ReplicationJob => (is => 'ro', isa => SMS_ReplicationJob);
  has ReplicationRunList => (is => 'ro', isa => ArrayRef[SMS_ReplicationRun]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReplicationJob' => {
                                     'class' => 'Paws::SMS::ReplicationJob',
                                     'type' => 'SMS_ReplicationJob'
                                   },
               'ReplicationRunList' => {
                                         'class' => 'Paws::SMS::ReplicationRun',
                                         'type' => 'ArrayRef[SMS_ReplicationRun]'
                                       },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ReplicationJob' => 'replicationJob',
                       'ReplicationRunList' => 'replicationRunList',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetReplicationRunsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
null when there are no more results to return.


=head2 ReplicationJob => SMS_ReplicationJob

Information about the replication job.


=head2 ReplicationRunList => ArrayRef[SMS_ReplicationRun]

Information about the replication runs.


=head2 _request_id => Str


=cut

1;