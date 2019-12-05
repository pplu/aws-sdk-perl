package Paws::SageMaker::ProcessingInput;
  use Moose;
  has InputName => (is => 'ro', isa => 'Str', required => 1);
  has S3Input => (is => 'ro', isa => 'Paws::SageMaker::ProcessingS3Input', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ProcessingInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ProcessingInput object:

  $service_obj->Method(Att1 => { InputName => $value, ..., S3Input => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ProcessingInput object:

  $result = $service_obj->Method(...);
  $result->Att1->InputName

=head1 DESCRIPTION

The inputs for a processing job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputName => Str

  The name of the inputs for the processing job.


=head2 B<REQUIRED> S3Input => L<Paws::SageMaker::ProcessingS3Input>

  The S3 inputs for the processing job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

