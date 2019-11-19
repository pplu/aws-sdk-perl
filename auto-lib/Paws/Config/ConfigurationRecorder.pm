# Generated from default/object.tt
package Paws::Config::ConfigurationRecorder;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw/Config_RecordingGroup/;
  has Name => (is => 'ro', isa => Str);
  has RecordingGroup => (is => 'ro', isa => Config_RecordingGroup);
  has RoleARN => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'RoleARN' => 'roleARN',
                       'RecordingGroup' => 'recordingGroup',
                       'Name' => 'name'
                     },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'RecordingGroup' => {
                                     'class' => 'Paws::Config::RecordingGroup',
                                     'type' => 'Config_RecordingGroup'
                                   },
               'RoleARN' => {
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

Paws::Config::ConfigurationRecorder

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConfigurationRecorder object:

  $service_obj->Method(Att1 => { Name => $value, ..., RoleARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConfigurationRecorder object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

An object that represents the recording of configuration changes of an
AWS resource.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the recorder. By default, AWS Config automatically assigns
the name "default" when creating the configuration recorder. You cannot
change the assigned name.


=head2 RecordingGroup => Config_RecordingGroup

  Specifies the types of AWS resources for which AWS Config records
configuration changes.


=head2 RoleARN => Str

  Amazon Resource Name (ARN) of the IAM role used to describe the AWS
resources associated with the account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

