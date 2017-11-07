package Paws::IoT::S3Action;
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str', request_name => 'bucketName', traits => ['NameInRequest'], required => 1);
  has CannedAcl => (is => 'ro', isa => 'Str', request_name => 'cannedAcl', traits => ['NameInRequest']);
  has Key => (is => 'ro', isa => 'Str', request_name => 'key', traits => ['NameInRequest'], required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::S3Action

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::S3Action object:

  $service_obj->Method(Att1 => { BucketName => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::S3Action object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketName

=head1 DESCRIPTION

Describes an action to write data to an Amazon S3 bucket.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketName => Str

  The Amazon S3 bucket.


=head2 CannedAcl => Str

  The Amazon S3 canned ACL that controls access to the object identified
by the object key. For more information, see S3 canned ACLs
(http://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl).


=head2 B<REQUIRED> Key => Str

  The object key.


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the IAM role that grants access.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

