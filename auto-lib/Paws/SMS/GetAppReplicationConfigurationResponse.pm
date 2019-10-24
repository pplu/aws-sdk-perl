# Generated from json/callresult_class.tt

package Paws::SMS::GetAppReplicationConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SMS::Types qw/SMS_ServerGroupReplicationConfiguration/;
  has ServerGroupReplicationConfigurations => (is => 'ro', isa => ArrayRef[SMS_ServerGroupReplicationConfiguration]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ServerGroupReplicationConfigurations' => {
                                                           'class' => 'Paws::SMS::ServerGroupReplicationConfiguration',
                                                           'type' => 'ArrayRef[SMS_ServerGroupReplicationConfiguration]'
                                                         }
             },
  'NameInRequest' => {
                       'ServerGroupReplicationConfigurations' => 'serverGroupReplicationConfigurations'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetAppReplicationConfigurationResponse

=head1 ATTRIBUTES


=head2 ServerGroupReplicationConfigurations => ArrayRef[SMS_ServerGroupReplicationConfiguration]

Replication configurations associated with server groups in this
application.


=head2 _request_id => Str


=cut

1;