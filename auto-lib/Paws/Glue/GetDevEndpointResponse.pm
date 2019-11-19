# Generated from json/callresult_class.tt

package Paws::Glue::GetDevEndpointResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_DevEndpoint/;
  has DevEndpoint => (is => 'ro', isa => Glue_DevEndpoint);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DevEndpoint' => {
                                  'class' => 'Paws::Glue::DevEndpoint',
                                  'type' => 'Glue_DevEndpoint'
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

Paws::Glue::GetDevEndpointResponse

=head1 ATTRIBUTES


=head2 DevEndpoint => Glue_DevEndpoint

A C<DevEndpoint> definition.


=head2 _request_id => Str


=cut

1;