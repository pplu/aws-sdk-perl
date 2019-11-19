# Generated from default/object.tt
package Paws::IoT::OTAUpdateFile;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_CodeSigning IoT_AttributesMap IoT_FileLocation/;
  has Attributes => (is => 'ro', isa => IoT_AttributesMap);
  has CodeSigning => (is => 'ro', isa => IoT_CodeSigning);
  has FileLocation => (is => 'ro', isa => IoT_FileLocation);
  has FileName => (is => 'ro', isa => Str);
  has FileVersion => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CodeSigning' => {
                                  'type' => 'IoT_CodeSigning',
                                  'class' => 'Paws::IoT::CodeSigning'
                                },
               'Attributes' => {
                                 'class' => 'Paws::IoT::AttributesMap',
                                 'type' => 'IoT_AttributesMap'
                               },
               'FileLocation' => {
                                   'type' => 'IoT_FileLocation',
                                   'class' => 'Paws::IoT::FileLocation'
                                 },
               'FileName' => {
                               'type' => 'Str'
                             },
               'FileVersion' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'FileVersion' => 'fileVersion',
                       'CodeSigning' => 'codeSigning',
                       'Attributes' => 'attributes',
                       'FileName' => 'fileName',
                       'FileLocation' => 'fileLocation'
                     }
}
;
    return $Params_map;
  }


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


=head2 Attributes => IoT_AttributesMap

  A list of name/attribute pairs.


=head2 CodeSigning => IoT_CodeSigning

  The code signing method of the file.


=head2 FileLocation => IoT_FileLocation

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

