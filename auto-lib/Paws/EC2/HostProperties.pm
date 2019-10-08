package Paws::EC2::HostProperties;
  use Moo;  use Types::Standard qw/Int Str/;
  use Paws::EC2::Types qw//;
  has Cores => (is => 'ro', isa => Int);
  has InstanceType => (is => 'ro', isa => Str);
  has Sockets => (is => 'ro', isa => Int);
  has TotalVCpus => (is => 'ro', isa => Int);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Sockets' => {
                              'type' => 'Int'
                            },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'Cores' => {
                            'type' => 'Int'
                          },
               'TotalVCpus' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'Sockets' => 'sockets',
                       'InstanceType' => 'instanceType',
                       'Cores' => 'cores',
                       'TotalVCpus' => 'totalVCpus'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::HostProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::HostProperties object:

  $service_obj->Method(Att1 => { Cores => $value, ..., TotalVCpus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::HostProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->Cores

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Cores => Int

  The number of cores on the Dedicated Host.


=head2 InstanceType => Str

  The instance type size that the Dedicated Host supports (for example,
C<m3.medium>).


=head2 Sockets => Int

  The number of sockets on the Dedicated Host.


=head2 TotalVCpus => Int

  The number of vCPUs on the Dedicated Host.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
