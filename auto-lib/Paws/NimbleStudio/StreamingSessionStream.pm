# Generated by default/object.tt
package Paws::NimbleStudio::StreamingSessionStream;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has CreatedBy => (is => 'ro', isa => 'Str', request_name => 'createdBy', traits => ['NameInRequest']);
  has ExpiresAt => (is => 'ro', isa => 'Str', request_name => 'expiresAt', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has StatusCode => (is => 'ro', isa => 'Str', request_name => 'statusCode', traits => ['NameInRequest']);
  has StreamId => (is => 'ro', isa => 'Str', request_name => 'streamId', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::StreamingSessionStream

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NimbleStudio::StreamingSessionStream object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NimbleStudio::StreamingSessionStream object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The Unix epoch timestamp in seconds for when the resource was created.


=head2 CreatedBy => Str

The user ID of the user that created the streaming session stream.


=head2 ExpiresAt => Str

The Unix epoch timestamp in seconds for when the resource expires.


=head2 State => Str

The current state.


=head2 StatusCode => Str

The streaming session stream status code.


=head2 StreamId => Str

The stream ID.


=head2 Url => Str

The URL to connect to this stream using the DCV client.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NimbleStudio>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

