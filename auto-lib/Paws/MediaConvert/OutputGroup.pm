# Generated from default/object.tt
package Paws::MediaConvert::OutputGroup;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaConvert::Types qw/MediaConvert_OutputGroupSettings MediaConvert_Output/;
  has CustomName => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has OutputGroupSettings => (is => 'ro', isa => MediaConvert_OutputGroupSettings);
  has Outputs => (is => 'ro', isa => ArrayRef[MediaConvert_Output]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CustomName' => {
                                 'type' => 'Str'
                               },
               'Outputs' => {
                              'class' => 'Paws::MediaConvert::Output',
                              'type' => 'ArrayRef[MediaConvert_Output]'
                            },
               'OutputGroupSettings' => {
                                          'class' => 'Paws::MediaConvert::OutputGroupSettings',
                                          'type' => 'MediaConvert_OutputGroupSettings'
                                        },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'CustomName' => 'customName',
                       'Outputs' => 'outputs',
                       'OutputGroupSettings' => 'outputGroupSettings',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::OutputGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::OutputGroup object:

  $service_obj->Method(Att1 => { CustomName => $value, ..., Outputs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::OutputGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomName

=head1 DESCRIPTION

Group of outputs

=head1 ATTRIBUTES


=head2 CustomName => Str

  Use Custom Group Name (CustomName) to specify a name for the output
group. This value is displayed on the console and can make your job
settings JSON more human-readable. It does not affect your outputs. Use
up to twelve characters that are either letters, numbers, spaces, or
underscores.


=head2 Name => Str

  Name of the output group


=head2 OutputGroupSettings => MediaConvert_OutputGroupSettings

  Output Group settings, including type


=head2 Outputs => ArrayRef[MediaConvert_Output]

  This object holds groups of encoding settings, one group of settings
per output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

