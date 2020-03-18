package Paws::SageMaker::CheckpointConfig;
  use Moose;
  has LocalPath => (is => 'ro', isa => 'Str');
  has S3Uri => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CheckpointConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::CheckpointConfig object:

  $service_obj->Method(Att1 => { LocalPath => $value, ..., S3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::CheckpointConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->LocalPath

=head1 DESCRIPTION

Contains information about the output location for managed spot
training checkpoint data.

=head1 ATTRIBUTES


=head2 LocalPath => Str

  (Optional) The local directory where checkpoints are written. The
default directory is C</opt/ml/checkpoints/>.


=head2 B<REQUIRED> S3Uri => Str

  Identifies the S3 path where you want Amazon SageMaker to store
checkpoints. For example, C<s3://bucket-name/key-name-prefix>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

