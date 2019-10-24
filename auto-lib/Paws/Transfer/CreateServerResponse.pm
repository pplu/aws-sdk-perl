# Generated from json/callresult_class.tt

package Paws::Transfer::CreateServerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Transfer::Types qw//;
  has ServerId => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ServerId' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'ServerId' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Transfer::CreateServerResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServerId => Str

The service-assigned ID of the SFTP server that is created.


=head2 _request_id => Str


=cut

1;