
package Paws::MediaLive::ListOfferingsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaLive::Types qw/MediaLive_Offering/;
  has NextToken => (is => 'ro', isa => Str);
  has Offerings => (is => 'ro', isa => ArrayRef[MediaLive_Offering]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Offerings' => 'offerings'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Offerings' => {
                                'type' => 'ArrayRef[MediaLive_Offering]',
                                'class' => 'Paws::MediaLive::Offering'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListOfferingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token to retrieve the next page of results


=head2 Offerings => ArrayRef[MediaLive_Offering]

List of offerings


=head2 _request_id => Str


=cut

