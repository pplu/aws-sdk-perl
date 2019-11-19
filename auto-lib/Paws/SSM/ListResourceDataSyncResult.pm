# Generated from json/callresult_class.tt

package Paws::SSM::ListResourceDataSyncResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_ResourceDataSyncItem/;
  has NextToken => (is => 'ro', isa => Str);
  has ResourceDataSyncItems => (is => 'ro', isa => ArrayRef[SSM_ResourceDataSyncItem]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ResourceDataSyncItems' => {
                                            'class' => 'Paws::SSM::ResourceDataSyncItem',
                                            'type' => 'ArrayRef[SSM_ResourceDataSyncItem]'
                                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListResourceDataSyncResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 ResourceDataSyncItems => ArrayRef[SSM_ResourceDataSyncItem]

A list of your current Resource Data Sync configurations and their
statuses.


=head2 _request_id => Str


=cut

1;