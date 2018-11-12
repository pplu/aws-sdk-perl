package Paws::Signer::S3Source;
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str', request_name => 'bucketName', traits => ['NameInRequest'], required => 1);
  has Key => (is => 'ro', isa => 'Str', request_name => 'key', traits => ['NameInRequest'], required => 1);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::S3Source

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Signer::S3Source object:

  $service_obj->Method(Att1 => { BucketName => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Signer::S3Source object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketName

=head1 DESCRIPTION

Information about the S3 bucket where you saved your unsigned code.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketName => Str

  Name of the S3 bucket.


=head2 B<REQUIRED> Key => Str

  Key name of the bucket object that contains your unsigned code.


=head2 B<REQUIRED> Version => Str

  Version of your source image in your version enabled S3 bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

