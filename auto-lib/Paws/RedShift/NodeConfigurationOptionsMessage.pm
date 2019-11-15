
package Paws::RedShift::NodeConfigurationOptionsMessage;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has NodeConfigurationOptionList => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::NodeConfigurationOption]', request_name => 'NodeConfigurationOption', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
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


=head2 NodeConfigurationOptionList => ArrayRef[L<Paws::RedShift::NodeConfigurationOption>]

A list of valid node configurations.


=head2 _request_id => Str


=cut

