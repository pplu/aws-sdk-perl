package Paws::SageMaker::TransformResources;
  use Moose;
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has VolumeKmsKeyId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TransformResources

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TransformResources object:

  $service_obj->Method(Att1 => { InstanceCount => $value, ..., VolumeKmsKeyId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TransformResources object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceCount

=head1 DESCRIPTION

Describes the resources, including ML instance types and ML instance
count, to use for transform job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceCount => Int

  The number of ML compute instances to use in the transform job. For
distributed transform, provide a value greater than 1. The default
value is C<1>.


=head2 B<REQUIRED> InstanceType => Str

  The ML compute instance type for the transform job. For using built-in
algorithms to transform moderately sized datasets, ml.m4.xlarge or
C<ml.m5.large> should suffice. There is no default value for
C<InstanceType>.


=head2 VolumeKmsKeyId => Str

  The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses
to encrypt data on the storage volume attached to the ML compute
instance(s) that run the batch transform job. The C<VolumeKmsKeyId> can
be any of the following formats:

=over

=item *

// KMS Key ID

C<"1234abcd-12ab-34cd-56ef-1234567890ab">

=item *

// Amazon Resource Name (ARN) of a KMS Key

C<"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab">

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

