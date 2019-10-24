package Paws::EC2::BundleTask;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_Storage EC2_BundleTaskError/;
  has BundleId => (is => 'ro', isa => Str);
  has BundleTaskError => (is => 'ro', isa => EC2_BundleTaskError);
  has InstanceId => (is => 'ro', isa => Str);
  has Progress => (is => 'ro', isa => Str);
  has StartTime => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has Storage => (is => 'ro', isa => EC2_Storage);
  has UpdateTime => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'BundleId' => {
                               'type' => 'Str'
                             },
               'State' => {
                            'type' => 'Str'
                          },
               'BundleTaskError' => {
                                      'class' => 'Paws::EC2::BundleTaskError',
                                      'type' => 'EC2_BundleTaskError'
                                    },
               'Storage' => {
                              'class' => 'Paws::EC2::Storage',
                              'type' => 'EC2_Storage'
                            },
               'UpdateTime' => {
                                 'type' => 'Str'
                               },
               'Progress' => {
                               'type' => 'Str'
                             },
               'StartTime' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'InstanceId' => 'instanceId',
                       'BundleId' => 'bundleId',
                       'State' => 'state',
                       'BundleTaskError' => 'error',
                       'Storage' => 'storage',
                       'UpdateTime' => 'updateTime',
                       'Progress' => 'progress',
                       'StartTime' => 'startTime'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::BundleTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::BundleTask object:

  $service_obj->Method(Att1 => { BundleId => $value, ..., UpdateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::BundleTask object:

  $result = $service_obj->Method(...);
  $result->Att1->BundleId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BundleId => Str

  The ID of the bundle task.


=head2 BundleTaskError => EC2_BundleTaskError

  If the task fails, a description of the error.


=head2 InstanceId => Str

  The ID of the instance associated with this bundle task.


=head2 Progress => Str

  The level of task completion, as a percent (for example, 20%).


=head2 StartTime => Str

  The time this task started.


=head2 State => Str

  The state of the task.


=head2 Storage => EC2_Storage

  The Amazon S3 storage locations.


=head2 UpdateTime => Str

  The time of the most recent update for the task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
