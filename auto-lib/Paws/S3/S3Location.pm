package Paws::S3::S3Location;
  use Moose;
  has AccessControlList => (is => 'ro', isa => 'ArrayRef[Paws::S3::Grant]', request_name => 'Grant', traits => ['NameInRequest']);
  has BucketName => (is => 'ro', isa => 'Str', required => 1);
  has CannedACL => (is => 'ro', isa => 'Str');
  has Encryption => (is => 'ro', isa => 'Paws::S3::Encryption');
  has Prefix => (is => 'ro', isa => 'Str', required => 1);
  has StorageClass => (is => 'ro', isa => 'Str');
  has Tagging => (is => 'ro', isa => 'Paws::S3::Tagging');
  has UserMetadata => (is => 'ro', isa => 'ArrayRef[Paws::S3::MetadataEntry]', request_name => 'MetadataEntry', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::S3Location

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::S3Location object:

  $service_obj->Method(Att1 => { AccessControlList => $value, ..., UserMetadata => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::S3Location object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessControlList

=head1 DESCRIPTION

Describes an S3 location that will receive the results of the restore
request.

=head1 ATTRIBUTES


=head2 AccessControlList => ArrayRef[L<Paws::S3::Grant>]

  A list of grants that control access to the staged results.


=head2 B<REQUIRED> BucketName => Str

  The name of the bucket where the restore results will be placed.


=head2 CannedACL => Str

  The canned ACL to apply to the restore results.


=head2 Encryption => L<Paws::S3::Encryption>

  


=head2 B<REQUIRED> Prefix => Str

  The prefix that is prepended to the restore results for this request.


=head2 StorageClass => Str

  The class of storage used to store the restore results.


=head2 Tagging => L<Paws::S3::Tagging>

  The tag-set that is applied to the restore results.


=head2 UserMetadata => ArrayRef[L<Paws::S3::MetadataEntry>]

  A list of metadata to store with the restore results in S3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

