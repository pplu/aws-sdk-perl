package Paws::Glacier::S3Location;
  use Moose;
  has AccessControlList => (is => 'ro', isa => 'ArrayRef[Paws::Glacier::Grant]');
  has BucketName => (is => 'ro', isa => 'Str');
  has CannedACL => (is => 'ro', isa => 'Str');
  has Encryption => (is => 'ro', isa => 'Paws::Glacier::Encryption');
  has Prefix => (is => 'ro', isa => 'Str');
  has StorageClass => (is => 'ro', isa => 'Str');
  has Tagging => (is => 'ro', isa => 'Paws::Glacier::Hashmap');
  has UserMetadata => (is => 'ro', isa => 'Paws::Glacier::Hashmap');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::S3Location

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glacier::S3Location object:

  $service_obj->Method(Att1 => { AccessControlList => $value, ..., UserMetadata => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glacier::S3Location object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessControlList

=head1 DESCRIPTION

Contains information about the location in Amazon S3 where the select
job results are stored.

=head1 ATTRIBUTES


=head2 AccessControlList => ArrayRef[L<Paws::Glacier::Grant>]

  A list of grants that control access to the staged results.


=head2 BucketName => Str

  The name of the Amazon S3 bucket where the job results are stored.


=head2 CannedACL => Str

  The canned access control list (ACL) to apply to the job results.


=head2 Encryption => L<Paws::Glacier::Encryption>

  Contains information about the encryption used to store the job results
in Amazon S3.


=head2 Prefix => Str

  The prefix that is prepended to the results for this request.


=head2 StorageClass => Str

  The storage class used to store the job results.


=head2 Tagging => L<Paws::Glacier::Hashmap>

  The tag-set that is applied to the job results.


=head2 UserMetadata => L<Paws::Glacier::Hashmap>

  A map of metadata to store with the job results in Amazon S3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

