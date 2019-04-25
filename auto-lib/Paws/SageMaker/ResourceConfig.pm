package Paws::SageMaker::ResourceConfig;
  use Moose;
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has VolumeKmsKeyId => (is => 'ro', isa => 'Str');
  has VolumeSizeInGB => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ResourceConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ResourceConfig object:

  $service_obj->Method(Att1 => { InstanceCount => $value, ..., VolumeSizeInGB => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ResourceConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceCount

=head1 DESCRIPTION

Describes the resources, including ML compute instances and ML storage
volumes, to use for model training.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceCount => Int

  The number of ML compute instances to use. For distributed training,
provide a value greater than 1.


=head2 B<REQUIRED> InstanceType => Str

  The ML compute instance type.


=head2 VolumeKmsKeyId => Str

  The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses
to encrypt data on the storage volume attached to the ML compute
instance(s) that run the training job. The C<VolumeKmsKeyId> can be any
of the following formats:

=over

=item *

// KMS Key ID

C<"1234abcd-12ab-34cd-56ef-1234567890ab">

=item *

// Amazon Resource Name (ARN) of a KMS Key

C<"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab">

=back



=head2 B<REQUIRED> VolumeSizeInGB => Int

  The size of the ML storage volume that you want to provision.

ML storage volumes store model artifacts and incremental states.
Training algorithms might also use the ML storage volume for scratch
space. If you want to store the training data in the ML storage volume,
choose C<File> as the C<TrainingInputMode> in the algorithm
specification.

You must specify sufficient ML storage for your scenario.

Amazon SageMaker supports only the General Purpose SSD (gp2) ML storage
volume type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

