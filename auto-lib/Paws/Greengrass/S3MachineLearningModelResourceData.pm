package Paws::Greengrass::S3MachineLearningModelResourceData;
  use Moose;
  has DestinationPath => (is => 'ro', isa => 'Str');
  has S3Uri => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::S3MachineLearningModelResourceData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::S3MachineLearningModelResourceData object:

  $service_obj->Method(Att1 => { DestinationPath => $value, ..., S3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::S3MachineLearningModelResourceData object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationPath

=head1 DESCRIPTION

Attributes that define an Amazon S3 machine learning resource.

=head1 ATTRIBUTES


=head2 DestinationPath => Str

  The absolute local path of the resource inside the Lambda environment.


=head2 S3Uri => Str

  The URI of the source model in an S3 bucket. The model package must be
in tar.gz or .zip format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

