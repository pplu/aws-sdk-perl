# Generated from default/object.tt
package Paws::GameLift::Script;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::GameLift::Types qw/GameLift_S3Location/;
  has CreationTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has ScriptId => (is => 'ro', isa => Str);
  has SizeOnDisk => (is => 'ro', isa => Int);
  has StorageLocation => (is => 'ro', isa => GameLift_S3Location);
  has Version => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SizeOnDisk' => {
                                 'type' => 'Int'
                               },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'Version' => {
                              'type' => 'Str'
                            },
               'ScriptId' => {
                               'type' => 'Str'
                             },
               'StorageLocation' => {
                                      'class' => 'Paws::GameLift::S3Location',
                                      'type' => 'GameLift_S3Location'
                                    },
               'Name' => {
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

Paws::GameLift::Script

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::Script object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::Script object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Properties describing a Realtime script.

B<Related operations>

=over

=item *

CreateScript

=item *

ListScripts

=item *

DescribeScript

=item *

UpdateScript

=item *

DeleteScript

=back


=head1 ATTRIBUTES


=head2 CreationTime => Str

  Time stamp indicating when this data object was created. Format is a
number expressed in Unix time as milliseconds (for example
"1469498468.057").


=head2 Name => Str

  Descriptive label that is associated with a script. Script names do not
need to be unique.


=head2 ScriptId => Str

  Unique identifier for a Realtime script


=head2 SizeOnDisk => Int

  File size of the uploaded Realtime script, expressed in bytes. When
files are uploaded from an S3 location, this value remains at "0".


=head2 StorageLocation => GameLift_S3Location

  


=head2 Version => Str

  Version that is associated with a build or script. Version strings do
not need to be unique.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

