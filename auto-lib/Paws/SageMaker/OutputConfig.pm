package Paws::SageMaker::OutputConfig;
  use Moose;
  has S3OutputLocation => (is => 'ro', isa => 'Str', required => 1);
  has TargetDevice => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::OutputConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::OutputConfig object:

  $service_obj->Method(Att1 => { S3OutputLocation => $value, ..., TargetDevice => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::OutputConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->S3OutputLocation

=head1 DESCRIPTION

Contains information about the output location for the compiled model
and the device (target) that the model runs on.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3OutputLocation => Str

  Identifies the S3 path where you want Amazon SageMaker to store the
model artifacts. For example, s3://bucket-name/key-name-prefix.


=head2 B<REQUIRED> TargetDevice => Str

  Identifies the device that you want to run your model on after it has
been compiled. For example: ml_c5.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

