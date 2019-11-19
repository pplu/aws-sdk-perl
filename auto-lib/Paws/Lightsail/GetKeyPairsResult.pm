# Generated from json/callresult_class.tt

package Paws::Lightsail::GetKeyPairsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_KeyPair/;
  has KeyPairs => (is => 'ro', isa => ArrayRef[Lightsail_KeyPair]);
  has NextPageToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextPageToken' => 'nextPageToken',
                       'KeyPairs' => 'keyPairs'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'KeyPairs' => {
                               'class' => 'Paws::Lightsail::KeyPair',
                               'type' => 'ArrayRef[Lightsail_KeyPair]'
                             },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetKeyPairsResult

=head1 ATTRIBUTES


=head2 KeyPairs => ArrayRef[Lightsail_KeyPair]

An array of key-value pairs containing information about the key pairs.


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your get
key pairs request.


=head2 _request_id => Str


=cut

1;