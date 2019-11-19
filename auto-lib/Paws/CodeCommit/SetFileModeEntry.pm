# Generated from default/object.tt
package Paws::CodeCommit::SetFileModeEntry;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw//;
  has FileMode => (is => 'ro', isa => Str, required => 1);
  has FilePath => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'FilePath' => 'filePath',
                       'FileMode' => 'fileMode'
                     },
  'IsRequired' => {
                    'FilePath' => 1,
                    'FileMode' => 1
                  },
  'types' => {
               'FileMode' => {
                               'type' => 'Str'
                             },
               'FilePath' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::SetFileModeEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::SetFileModeEntry object:

  $service_obj->Method(Att1 => { FileMode => $value, ..., FilePath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::SetFileModeEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->FileMode

=head1 DESCRIPTION

Information about the file mode changes.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileMode => Str

  The file mode for the file.


=head2 B<REQUIRED> FilePath => Str

  The full path to the file, including the name of the file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

