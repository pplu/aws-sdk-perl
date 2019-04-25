package Paws::IoT::Stream;
  use Moose;
  has FileId => (is => 'ro', isa => 'Int', request_name => 'fileId', traits => ['NameInRequest']);
  has StreamId => (is => 'ro', isa => 'Str', request_name => 'streamId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::Stream

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::Stream object:

  $service_obj->Method(Att1 => { FileId => $value, ..., StreamId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::Stream object:

  $result = $service_obj->Method(...);
  $result->Att1->FileId

=head1 DESCRIPTION

Describes a group of files that can be streamed.

=head1 ATTRIBUTES


=head2 FileId => Int

  The ID of a file associated with a stream.


=head2 StreamId => Str

  The stream ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

