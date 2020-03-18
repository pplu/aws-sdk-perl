package Paws::SageMaker::TensorBoardOutputConfig;
  use Moose;
  has LocalPath => (is => 'ro', isa => 'Str');
  has S3OutputPath => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TensorBoardOutputConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TensorBoardOutputConfig object:

  $service_obj->Method(Att1 => { LocalPath => $value, ..., S3OutputPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TensorBoardOutputConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->LocalPath

=head1 DESCRIPTION

Configuration of storage locations for TensorBoard output.

=head1 ATTRIBUTES


=head2 LocalPath => Str

  Path to local storage location for tensorBoard output. Defaults to
C</opt/ml/output/tensorboard>.


=head2 B<REQUIRED> S3OutputPath => Str

  Path to Amazon S3 storage location for TensorBoard output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

