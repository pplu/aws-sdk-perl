# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::ListTagsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_Tag/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[AlexaForBusiness_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Tags' => {
                           'type' => 'ArrayRef[AlexaForBusiness_Tag]',
                           'class' => 'Paws::AlexaForBusiness::Tag'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListTagsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token returned to indicate that there is more data available.


=head2 Tags => ArrayRef[AlexaForBusiness_Tag]

The tags requested for the specified resource.


=head2 _request_id => Str


=cut

1;