package Paws::CodeStar::S3Location;
  use Moose;
  has BucketKey => (is => 'ro', isa => 'Str', request_name => 'bucketKey', traits => ['NameInRequest']);
  has BucketName => (is => 'ro', isa => 'Str', request_name => 'bucketName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::S3Location

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeStar::S3Location object:

  $service_obj->Method(Att1 => { BucketKey => $value, ..., BucketName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeStar::S3Location object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketKey

=head1 DESCRIPTION

The Amazon S3 location where the source code files provided with the
project request are stored.

=head1 ATTRIBUTES


=head2 BucketKey => Str

  The Amazon S3 object key where the source code files provided with the
project request are stored.


=head2 BucketName => Str

  The Amazon S3 bucket name where the source code files provided with the
project request are stored.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

