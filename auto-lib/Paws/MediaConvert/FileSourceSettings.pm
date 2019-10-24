# Generated from default/object.tt
package Paws::MediaConvert::FileSourceSettings;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::MediaConvert::Types qw//;
  has Convert608To708 => (is => 'ro', isa => Str);
  has SourceFile => (is => 'ro', isa => Str);
  has TimeDelta => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TimeDelta' => {
                                'type' => 'Int'
                              },
               'SourceFile' => {
                                 'type' => 'Str'
                               },
               'Convert608To708' => {
                                      'type' => 'Str'
                                    }
             },
  'NameInRequest' => {
                       'TimeDelta' => 'timeDelta',
                       'SourceFile' => 'sourceFile',
                       'Convert608To708' => 'convert608To708'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::FileSourceSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::FileSourceSettings object:

  $service_obj->Method(Att1 => { Convert608To708 => $value, ..., TimeDelta => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::FileSourceSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Convert608To708

=head1 DESCRIPTION

Settings for File-based Captions in Source

=head1 ATTRIBUTES


=head2 Convert608To708 => Str

  If set to UPCONVERT, 608 caption data is both passed through via the
"608 compatibility bytes" fields of the 708 wrapper as well as
translated into 708. 708 data present in the source content will be
discarded.


=head2 SourceFile => Str

  External caption file used for loading captions. Accepted file
extensions are 'scc', 'ttml', 'dfxp', 'stl', 'srt', and 'smi'.


=head2 TimeDelta => Int

  Specifies a time delta in seconds to offset the captions from the
source file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

