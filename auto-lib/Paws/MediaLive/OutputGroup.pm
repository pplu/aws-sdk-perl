# Generated from default/object.tt
package Paws::MediaLive::OutputGroup;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaLive::Types qw/MediaLive_Output MediaLive_OutputGroupSettings/;
  has Name => (is => 'ro', isa => Str);
  has OutputGroupSettings => (is => 'ro', isa => MediaLive_OutputGroupSettings, required => 1);
  has Outputs => (is => 'ro', isa => ArrayRef[MediaLive_Output], required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Outputs' => 'outputs',
                       'OutputGroupSettings' => 'outputGroupSettings',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'OutputGroupSettings' => 1,
                    'Outputs' => 1
                  },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'OutputGroupSettings' => {
                                          'type' => 'MediaLive_OutputGroupSettings',
                                          'class' => 'Paws::MediaLive::OutputGroupSettings'
                                        },
               'Outputs' => {
                              'class' => 'Paws::MediaLive::Output',
                              'type' => 'ArrayRef[MediaLive_Output]'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::OutputGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::OutputGroup object:

  $service_obj->Method(Att1 => { Name => $value, ..., Outputs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::OutputGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Output groups for this Live Event. Output groups contain information
about where streams should be distributed.

=head1 ATTRIBUTES


=head2 Name => Str

  Custom output group name optionally defined by the user. Only letters,
numbers, and the underscore character allowed; only 32 characters
allowed.


=head2 B<REQUIRED> OutputGroupSettings => MediaLive_OutputGroupSettings

  Settings associated with the output group.


=head2 B<REQUIRED> Outputs => ArrayRef[MediaLive_Output]

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

