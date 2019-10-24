
package Paws::Greengrass::UpdateConnectivityInfoResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw//;
  has Message => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Version' => {
                              'type' => 'Str'
                            },
               'Message' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Message' => 'message'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::UpdateConnectivityInfoResponse

=head1 ATTRIBUTES


=head2 Message => Str

A message about the connectivity info update request.


=head2 Version => Str

The new version of the connectivity info.


=head2 _request_id => Str


=cut

