package Paws::EC2::VCpuInfo;
  use Moose;
  has DefaultCores => (is => 'ro', isa => 'Int', request_name => 'defaultCores', traits => ['NameInRequest']);
  has DefaultThreadsPerCore => (is => 'ro', isa => 'Int', request_name => 'defaultThreadsPerCore', traits => ['NameInRequest']);
  has DefaultVCpus => (is => 'ro', isa => 'Int', request_name => 'defaultVCpus', traits => ['NameInRequest']);
  has ValidCores => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'validCores', traits => ['NameInRequest']);
  has ValidThreadsPerCore => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'validThreadsPerCore', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VCpuInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VCpuInfo object:

  $service_obj->Method(Att1 => { DefaultCores => $value, ..., ValidThreadsPerCore => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VCpuInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultCores

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DefaultCores => Int

The default number of cores for the instance type.


=head2 DefaultThreadsPerCore => Int

The default number of threads per core for the instance type.


=head2 DefaultVCpus => Int

The default number of vCPUs for the instance type.


=head2 ValidCores => ArrayRef[Int]

List of the valid number of cores that can be configured for the
instance type.


=head2 ValidThreadsPerCore => ArrayRef[Int]

List of the valid number of threads per core that can be configured for
the instance type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
