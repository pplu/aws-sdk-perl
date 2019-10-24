# Generated from json/callresult_class.tt

package Paws::Lightsail::GetStaticIpsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_StaticIp/;
  has NextPageToken => (is => 'ro', isa => Str);
  has StaticIps => (is => 'ro', isa => ArrayRef[Lightsail_StaticIp]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StaticIps' => {
                                'class' => 'Paws::Lightsail::StaticIp',
                                'type' => 'ArrayRef[Lightsail_StaticIp]'
                              },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'StaticIps' => 'staticIps',
                       'NextPageToken' => 'nextPageToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetStaticIpsResult

=head1 ATTRIBUTES


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your get
static IPs request.


=head2 StaticIps => ArrayRef[Lightsail_StaticIp]

An array of key-value pairs containing information about your get
static IPs request.


=head2 _request_id => Str


=cut

1;