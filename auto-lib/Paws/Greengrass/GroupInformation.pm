# Generated from default/object.tt
package Paws::Greengrass::GroupInformation;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw//;
  has Arn => (is => 'ro', isa => Str);
  has CreationTimestamp => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has LastUpdatedTimestamp => (is => 'ro', isa => Str);
  has LatestVersion => (is => 'ro', isa => Str);
  has LatestVersionArn => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastUpdatedTimestamp' => {
                                           'type' => 'Str'
                                         },
               'LatestVersionArn' => {
                                       'type' => 'Str'
                                     },
               'CreationTimestamp' => {
                                        'type' => 'Str'
                                      },
               'Name' => {
                           'type' => 'Str'
                         },
               'LatestVersion' => {
                                    'type' => 'Str'
                                  },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Id' => {
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

Paws::Greengrass::GroupInformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::GroupInformation object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::GroupInformation object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a group.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the group.


=head2 CreationTimestamp => Str

  The time, in milliseconds since the epoch, when the group was created.


=head2 Id => Str

  The ID of the group.


=head2 LastUpdatedTimestamp => Str

  The time, in milliseconds since the epoch, when the group was last
updated.


=head2 LatestVersion => Str

  The ID of the latest version associated with the group.


=head2 LatestVersionArn => Str

  The ARN of the latest version associated with the group.


=head2 Name => Str

  The name of the group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

