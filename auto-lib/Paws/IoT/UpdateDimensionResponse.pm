
package Paws::IoT::UpdateDimensionResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate');
  has LastModifiedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedDate');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has StringValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'stringValues');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateDimensionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN)of the created dimension.


=head2 CreationDate => Str

The date and time, in milliseconds since epoch, when the dimension was
initially created.


=head2 LastModifiedDate => Str

The date and time, in milliseconds since epoch, when the dimension was
most recently updated.


=head2 Name => Str

A unique identifier for the dimension.


=head2 StringValues => ArrayRef[Str|Undef]

The value or list of values used to scope the dimension. For example,
for topic filters, this is the pattern used to match the MQTT topic
name.


=head2 Type => Str

The type of the dimension.

Valid values are: C<"TOPIC_FILTER">
=head2 _request_id => Str


=cut

