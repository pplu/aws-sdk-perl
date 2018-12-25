package Paws::SageMaker::ShuffleConfig;
  use Moose;
  has Seed => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ShuffleConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ShuffleConfig object:

  $service_obj->Method(Att1 => { Seed => $value, ..., Seed => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ShuffleConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Seed

=head1 DESCRIPTION

A configuration for a shuffle option for input data in a channel. If
you use C<S3Prefix> for C<S3DataType>, the results of the S3 key prefix
matches are shuffled. If you use C<ManifestFile>, the order of the S3
object references in the C<ManifestFile> is shuffled. If you use
C<AugmentedManifestFile>, the order of the JSON lines in the
C<AugmentedManifestFile> is shuffled. The shuffling order is determined
using the C<Seed> value.

For Pipe input mode, shuffling is done at the start of every epoch.
With large datasets, this ensures that the order of the training data
is different for each epoch, and it helps reduce bias and possible
overfitting. In a multi-node training job when C<ShuffleConfig> is
combined with C<S3DataDistributionType> of C<ShardedByS3Key>, the data
is shuffled across nodes so that the content sent to a particular node
on the first epoch might be sent to a different node on the second
epoch.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Seed => Int

  Determines the shuffling order in C<ShuffleConfig> value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

