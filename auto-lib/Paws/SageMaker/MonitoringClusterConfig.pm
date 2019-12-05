package Paws::SageMaker::MonitoringClusterConfig;
  use Moose;
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has VolumeKmsKeyId => (is => 'ro', isa => 'Str');
  has VolumeSizeInGB => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::MonitoringClusterConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::MonitoringClusterConfig object:

  $service_obj->Method(Att1 => { InstanceCount => $value, ..., VolumeSizeInGB => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::MonitoringClusterConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceCount

=head1 DESCRIPTION

Configuration for the cluster used to run model monitoring jobs.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceCount => Int

  The number of ML compute instances to use in the model monitoring job.
For distributed processing jobs, specify a value greater than 1. The
default value is 1.


=head2 B<REQUIRED> InstanceType => Str

  The ML compute instance type for the processing job.


=head2 VolumeKmsKeyId => Str

  The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses
to encrypt data on the storage volume attached to the ML compute
instance(s) that run the model monitoring job.


=head2 B<REQUIRED> VolumeSizeInGB => Int

  The size of the ML storage volume, in gigabytes, that you want to
provision. You must specify sufficient ML storage for your scenario.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

