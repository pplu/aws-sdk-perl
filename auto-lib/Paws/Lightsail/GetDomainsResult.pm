# Generated from json/callresult_class.tt

package Paws::Lightsail::GetDomainsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_Domain/;
  has Domains => (is => 'ro', isa => ArrayRef[Lightsail_Domain]);
  has NextPageToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'Domains' => {
                              'class' => 'Paws::Lightsail::Domain',
                              'type' => 'ArrayRef[Lightsail_Domain]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextPageToken' => 'nextPageToken',
                       'Domains' => 'domains'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetDomainsResult

=head1 ATTRIBUTES


=head2 Domains => ArrayRef[Lightsail_Domain]

An array of key-value pairs containing information about each of the
domain entries in the user's account.


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your get
active names request.


=head2 _request_id => Str


=cut

1;