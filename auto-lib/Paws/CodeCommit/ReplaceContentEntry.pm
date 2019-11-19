# Generated from default/object.tt
package Paws::CodeCommit::ReplaceContentEntry;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw//;
  has Content => (is => 'ro', isa => Str);
  has FileMode => (is => 'ro', isa => Str);
  has FilePath => (is => 'ro', isa => Str, required => 1);
  has ReplacementType => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FileMode' => {
                               'type' => 'Str'
                             },
               'FilePath' => {
                               'type' => 'Str'
                             },
               'ReplacementType' => {
                                      'type' => 'Str'
                                    },
               'Content' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'ReplacementType' => 'replacementType',
                       'Content' => 'content',
                       'FilePath' => 'filePath',
                       'FileMode' => 'fileMode'
                     },
  'IsRequired' => {
                    'ReplacementType' => 1,
                    'FilePath' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ReplaceContentEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::ReplaceContentEntry object:

  $service_obj->Method(Att1 => { Content => $value, ..., ReplacementType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::ReplaceContentEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Content

=head1 DESCRIPTION

Information about a replacement content entry in the conflict of a
merge or pull request operation.

=head1 ATTRIBUTES


=head2 Content => Str

  The base-64 encoded content to use when the replacement type is
USE_NEW_CONTENT.


=head2 FileMode => Str

  The file mode to apply during conflict resoltion.


=head2 B<REQUIRED> FilePath => Str

  The path of the conflicting file.


=head2 B<REQUIRED> ReplacementType => Str

  The replacement type to use when determining how to resolve the
conflict.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

