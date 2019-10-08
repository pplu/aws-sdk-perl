package Paws::EC2::ImportInstanceTaskDetails;
  use Moo;  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ImportInstanceVolumeDetailItem/;
  has Description => (is => 'ro', isa => Str);
  has InstanceId => (is => 'ro', isa => Str);
  has Platform => (is => 'ro', isa => Str);
  has Volumes => (is => 'ro', isa => ArrayRef[EC2_ImportInstanceVolumeDetailItem]);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Volumes' => {
                              'class' => 'Paws::EC2::ImportInstanceVolumeDetailItem',
                              'type' => 'ArrayRef[EC2_ImportInstanceVolumeDetailItem]'
                            },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'Platform' => {
                               'type' => 'Str'
                             },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Volumes' => 'volumes',
                       'InstanceId' => 'instanceId',
                       'Platform' => 'platform',
                       'Description' => 'description'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportInstanceTaskDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ImportInstanceTaskDetails object:

  $service_obj->Method(Att1 => { Description => $value, ..., Volumes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ImportInstanceTaskDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

  A description of the task.


=head2 InstanceId => Str

  The ID of the instance.


=head2 Platform => Str

  The instance operating system.


=head2 Volumes => ArrayRef[EC2_ImportInstanceVolumeDetailItem]

  The volumes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
