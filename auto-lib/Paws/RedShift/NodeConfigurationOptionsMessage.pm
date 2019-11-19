# Generated from callresult_class.tt

package Paws::RedShift::NodeConfigurationOptionsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_NodeConfigurationOption/;
  has Marker => (is => 'ro', isa => Str);
  has NodeConfigurationOptionList => (is => 'ro', isa => ArrayRef[RedShift_NodeConfigurationOption]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NodeConfigurationOptionList' => {
                                                  'class' => 'Paws::RedShift::NodeConfigurationOption',
                                                  'type' => 'ArrayRef[RedShift_NodeConfigurationOption]'
                                                },
               'Marker' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NodeConfigurationOptionList' => 'NodeConfigurationOption'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::NodeConfigurationOptionsMessage

=head1 ATTRIBUTES


=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
marker value in the C<Marker> parameter and retrying the command. If
the C<Marker> field is empty, all response records have been retrieved
for the request.


=head2 NodeConfigurationOptionList => ArrayRef[RedShift_NodeConfigurationOption]

A list of valid node configurations.


=head2 _request_id => Str


=cut

