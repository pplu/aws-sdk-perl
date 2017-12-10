package Paws::SSM::S3OutputLocation;
  use Moose;
  has OutputS3BucketName => (is => 'ro', isa => 'Str');
  has OutputS3KeyPrefix => (is => 'ro', isa => 'Str');
  has OutputS3Region => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::S3OutputLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::S3OutputLocation object:

  $service_obj->Method(Att1 => { OutputS3BucketName => $value, ..., OutputS3Region => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::S3OutputLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->OutputS3BucketName

=head1 DESCRIPTION

An Amazon S3 bucket where you want to store the results of this
request.

=head1 ATTRIBUTES


=head2 OutputS3BucketName => Str

  The name of the Amazon S3 bucket.


=head2 OutputS3KeyPrefix => Str

  The Amazon S3 bucket subfolder.


=head2 OutputS3Region => Str

  (Deprecated) You can no longer specify this parameter. The system
ignores it. Instead, Systems Manager automatically determines the
Amazon S3 bucket region.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

