# Generated from json/callresult_class.tt

package Paws::Glue::ListDevEndpointsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Glue::Types qw//;
  has DevEndpointNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DevEndpointNames' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListDevEndpointsResponse

=head1 ATTRIBUTES


=head2 DevEndpointNames => ArrayRef[Str|Undef]

The names of all the C<DevEndpoint>s in the account, or the
C<DevEndpoint>s with the specified tags.


=head2 NextToken => Str

A continuation token, if the returned list does not contain the last
metric available.


=head2 _request_id => Str


=cut

1;