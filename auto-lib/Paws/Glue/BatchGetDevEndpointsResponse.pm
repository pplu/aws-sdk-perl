# Generated from json/callresult_class.tt

package Paws::Glue::BatchGetDevEndpointsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Glue::Types qw/Glue_DevEndpoint/;
  has DevEndpoints => (is => 'ro', isa => ArrayRef[Glue_DevEndpoint]);
  has DevEndpointsNotFound => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DevEndpointsNotFound' => {
                                           'type' => 'ArrayRef[Str|Undef]'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DevEndpoints' => {
                                   'class' => 'Paws::Glue::DevEndpoint',
                                   'type' => 'ArrayRef[Glue_DevEndpoint]'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetDevEndpointsResponse

=head1 ATTRIBUTES


=head2 DevEndpoints => ArrayRef[Glue_DevEndpoint]

A list of C<DevEndpoint> definitions.


=head2 DevEndpointsNotFound => ArrayRef[Str|Undef]

A list of C<DevEndpoints> not found.


=head2 _request_id => Str


=cut

1;