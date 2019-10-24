# Generated from json/callresult_class.tt

package Paws::Lightsail::GetBundlesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_Bundle/;
  has Bundles => (is => 'ro', isa => ArrayRef[Lightsail_Bundle]);
  has NextPageToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Bundles' => {
                              'class' => 'Paws::Lightsail::Bundle',
                              'type' => 'ArrayRef[Lightsail_Bundle]'
                            }
             },
  'NameInRequest' => {
                       'NextPageToken' => 'nextPageToken',
                       'Bundles' => 'bundles'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetBundlesResult

=head1 ATTRIBUTES


=head2 Bundles => ArrayRef[Lightsail_Bundle]

An array of key-value pairs that contains information about the
available bundles.


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your get
active names request.


=head2 _request_id => Str


=cut

1;