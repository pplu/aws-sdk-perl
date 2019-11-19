package Paws::EC2::Placement;
  use Moo;  use Types::Standard qw/Str Int/;
  use Paws::EC2::Types qw//;
  has Affinity => (is => 'ro', isa => Str);
  has AvailabilityZone => (is => 'ro', isa => Str);
  has GroupName => (is => 'ro', isa => Str);
  has HostId => (is => 'ro', isa => Str);
  has PartitionNumber => (is => 'ro', isa => Int);
  has SpreadDomain => (is => 'ro', isa => Str);
  has Tenancy => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'HostId' => 'hostId',
                       'AvailabilityZone' => 'availabilityZone',
                       'SpreadDomain' => 'spreadDomain',
                       'PartitionNumber' => 'partitionNumber',
                       'GroupName' => 'groupName',
                       'Affinity' => 'affinity',
                       'Tenancy' => 'tenancy'
                     },
  'types' => {
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'HostId' => {
                             'type' => 'Str'
                           },
               'GroupName' => {
                                'type' => 'Str'
                              },
               'SpreadDomain' => {
                                   'type' => 'Str'
                                 },
               'PartitionNumber' => {
                                      'type' => 'Int'
                                    },
               'Affinity' => {
                               'type' => 'Str'
                             },
               'Tenancy' => {
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

Paws::EC2::Placement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Placement object:

  $service_obj->Method(Att1 => { Affinity => $value, ..., Tenancy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Placement object:

  $result = $service_obj->Method(...);
  $result->Att1->Affinity

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Affinity => Str

  The affinity setting for the instance on the Dedicated Host. This
parameter is not supported for the ImportInstance command.


=head2 AvailabilityZone => Str

  The Availability Zone of the instance.

If not specified, an Availability Zone will be automatically chosen for
you based on the load balancing criteria for the Region.


=head2 GroupName => Str

  The name of the placement group the instance is in.


=head2 HostId => Str

  The ID of the Dedicated Host on which the instance resides. This
parameter is not supported for the ImportInstance command.


=head2 PartitionNumber => Int

  The number of the partition the instance is in. Valid only if the
placement group strategy is set to C<partition>.


=head2 SpreadDomain => Str

  Reserved for future use.


=head2 Tenancy => Str

  The tenancy of the instance (if the instance is running in a VPC). An
instance with a tenancy of C<dedicated> runs on single-tenant hardware.
The C<host> tenancy is not supported for the ImportInstance command.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
