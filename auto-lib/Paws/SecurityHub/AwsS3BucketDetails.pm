package Paws::SecurityHub::AwsS3BucketDetails;
  use Moose;
  has OwnerId => (is => 'ro', isa => 'Str');
  has OwnerName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsS3BucketDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsS3BucketDetails object:

  $service_obj->Method(Att1 => { OwnerId => $value, ..., OwnerName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsS3BucketDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->OwnerId

=head1 DESCRIPTION

The details of an AWS S3 Bucket.

=head1 ATTRIBUTES


=head2 OwnerId => Str

  The canonical user ID of the owner of the S3 bucket.


=head2 OwnerName => Str

  The display name of the owner of the S3 bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

