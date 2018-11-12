package Paws::IoT::OTAUpdateFile;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::IoT::AttributesMap', request_name => 'attributes', traits => ['NameInRequest']);
  has CodeSigning => (is => 'ro', isa => 'Paws::IoT::CodeSigning', request_name => 'codeSigning', traits => ['NameInRequest']);
  has FileLocation => (is => 'ro', isa => 'Paws::IoT::FileLocation', request_name => 'fileLocation', traits => ['NameInRequest']);
  has FileName => (is => 'ro', isa => 'Str', request_name => 'fileName', traits => ['NameInRequest']);
  has FileVersion => (is => 'ro', isa => 'Str', request_name => 'fileVersion', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::OTAUpdateFile

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::OTAUpdateFile object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., FileVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::OTAUpdateFile object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

Describes a file to be associated with an OTA update.

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::IoT::AttributesMap>

  A list of name/attribute pairs.


=head2 CodeSigning => L<Paws::IoT::CodeSigning>

  The code signing method of the file.


=head2 FileLocation => L<Paws::IoT::FileLocation>

  The location of the updated firmware.


=head2 FileName => Str

  The name of the file.


=head2 FileVersion => Str

  The file version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

