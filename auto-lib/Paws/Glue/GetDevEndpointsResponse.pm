# Generated from json/callresult_class.tt

package Paws::Glue::GetDevEndpointsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_DevEndpoint/;
  has DevEndpoints => (is => 'ro', isa => ArrayRef[Glue_DevEndpoint]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DevEndpoints' => {
                                   'class' => 'Paws::Glue::DevEndpoint',
                                   'type' => 'ArrayRef[Glue_DevEndpoint]'
                                 },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::Glue::GetDevEndpointsResponse

=head1 ATTRIBUTES


=head2 DevEndpoints => ArrayRef[Glue_DevEndpoint]

A list of DevEndpoint definitions.


=head2 NextToken => Str

A continuation token, if not all DevEndpoint definitions have yet been
returned.


=head2 _request_id => Str


=cut

1;