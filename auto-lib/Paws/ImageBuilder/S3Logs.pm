package Paws::ImageBuilder::S3Logs;
  use Moose;
  has S3BucketName => (is => 'ro', isa => 'Str', request_name => 's3BucketName', traits => ['NameInRequest']);
  has S3KeyPrefix => (is => 'ro', isa => 'Str', request_name => 's3KeyPrefix', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::S3Logs

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::S3Logs object:

  $service_obj->Method(Att1 => { S3BucketName => $value, ..., S3KeyPrefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::S3Logs object:

  $result = $service_obj->Method(...);
  $result->Att1->S3BucketName

=head1 DESCRIPTION

S3 Logging configuration.

=head1 ATTRIBUTES


=head2 S3BucketName => Str

  The S3 bucket in which to store the logs.


=head2 S3KeyPrefix => Str

  The S3 path in which to store the logs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

