# Generated from json/callresult_class.tt

package Paws::StorageGateway::RefreshCacheOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw//;
  has FileShareARN => (is => 'ro', isa => Str);
  has NotificationId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NotificationId' => {
                                     'type' => 'Str'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FileShareARN' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::RefreshCacheOutput

=head1 ATTRIBUTES


=head2 FileShareARN => Str




=head2 NotificationId => Str




=head2 _request_id => Str


=cut

1;