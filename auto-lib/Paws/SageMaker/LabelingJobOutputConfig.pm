package Paws::SageMaker::LabelingJobOutputConfig;
  use Moose;
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has S3OutputPath => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::LabelingJobOutputConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::LabelingJobOutputConfig object:

  $service_obj->Method(Att1 => { KmsKeyId => $value, ..., S3OutputPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::LabelingJobOutputConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->KmsKeyId

=head1 DESCRIPTION

Output configuration information for a labeling job.

=head1 ATTRIBUTES


=head2 KmsKeyId => Str

  The AWS Key Management Service ID of the key used to encrypt the output
data, if any.


=head2 B<REQUIRED> S3OutputPath => Str

  The Amazon S3 location to write output data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

