package Paws::EC2::InstanceStatus;
  use Moo;  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_InstanceStatusSummary EC2_InstanceStatusEvent EC2_InstanceState/;
  has AvailabilityZone => (is => 'ro', isa => Str);
  has Events => (is => 'ro', isa => ArrayRef[EC2_InstanceStatusEvent]);
  has InstanceId => (is => 'ro', isa => Str);
  has InstanceState => (is => 'ro', isa => EC2_InstanceState);
  has InstanceStatus => (is => 'ro', isa => EC2_InstanceStatusSummary);
  has SystemStatus => (is => 'ro', isa => EC2_InstanceStatusSummary);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'AvailabilityZone' => 'availabilityZone',
                       'InstanceState' => 'instanceState',
                       'InstanceId' => 'instanceId',
                       'SystemStatus' => 'systemStatus',
                       'Events' => 'eventsSet',
                       'InstanceStatus' => 'instanceStatus'
                     },
  'types' => {
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'InstanceState' => {
                                    'type' => 'EC2_InstanceState',
                                    'class' => 'Paws::EC2::InstanceState'
                                  },
               'InstanceStatus' => {
                                     'type' => 'EC2_InstanceStatusSummary',
                                     'class' => 'Paws::EC2::InstanceStatusSummary'
                                   },
               'Events' => {
                             'class' => 'Paws::EC2::InstanceStatusEvent',
                             'type' => 'ArrayRef[EC2_InstanceStatusEvent]'
                           },
               'SystemStatus' => {
                                   'class' => 'Paws::EC2::InstanceStatusSummary',
                                   'type' => 'EC2_InstanceStatusSummary'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceStatus object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., SystemStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Availability Zone of the instance.


=head2 Events => ArrayRef[EC2_InstanceStatusEvent]

  Any scheduled events associated with the instance.


=head2 InstanceId => Str

  The ID of the instance.


=head2 InstanceState => EC2_InstanceState

  The intended state of the instance. DescribeInstanceStatus requires
that an instance be in the C<running> state.


=head2 InstanceStatus => EC2_InstanceStatusSummary

  Reports impaired functionality that stems from issues internal to the
instance, such as impaired reachability.


=head2 SystemStatus => EC2_InstanceStatusSummary

  Reports impaired functionality that stems from issues related to the
systems that support an instance, such as hardware failures and network
connectivity problems.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
