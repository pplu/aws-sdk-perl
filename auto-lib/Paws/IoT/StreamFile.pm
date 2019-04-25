package Paws::IoT::StreamFile;
  use Moose;
  has FileId => (is => 'ro', isa => 'Int', request_name => 'fileId', traits => ['NameInRequest']);
  has S3Location => (is => 'ro', isa => 'Paws::IoT::S3Location', request_name => 's3Location', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::StreamFile

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::StreamFile object:

  $service_obj->Method(Att1 => { FileId => $value, ..., S3Location => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::StreamFile object:

  $result = $service_obj->Method(...);
  $result->Att1->FileId

=head1 DESCRIPTION

Represents a file to stream.

=head1 ATTRIBUTES


=head2 FileId => Int

  The file ID.


=head2 S3Location => L<Paws::IoT::S3Location>

  The location of the file in S3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

