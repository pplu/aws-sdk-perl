package Paws::S3::PublicAccessBlockConfiguration;
  use Moose;
  has BlockPublicAcls => (is => 'ro', isa => 'Bool', request_name => 'BlockPublicAcls', traits => ['NameInRequest']);
  has BlockPublicPolicy => (is => 'ro', isa => 'Bool', request_name => 'BlockPublicPolicy', traits => ['NameInRequest']);
  has IgnorePublicAcls => (is => 'ro', isa => 'Bool', request_name => 'IgnorePublicAcls', traits => ['NameInRequest']);
  has RestrictPublicBuckets => (is => 'ro', isa => 'Bool', request_name => 'RestrictPublicBuckets', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PublicAccessBlockConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::PublicAccessBlockConfiguration object:

  $service_obj->Method(Att1 => { BlockPublicAcls => $value, ..., RestrictPublicBuckets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::PublicAccessBlockConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockPublicAcls

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BlockPublicAcls => Bool

  Specifies whether Amazon S3 should block public access control lists
(ACLs) for this bucket and objects in this bucket. Setting this element
to C<TRUE> causes the following behavior:

=over

=item *

PUT Bucket acl and PUT Object acl calls fail if the specified ACL is
public.

=item *

PUT Object calls fail if the request includes a public ACL.

=back

Enabling this setting doesn't affect existing policies or ACLs.


=head2 BlockPublicPolicy => Bool

  Specifies whether Amazon S3 should block public bucket policies for
this bucket. Setting this element to C<TRUE> causes Amazon S3 to reject
calls to PUT Bucket policy if the specified bucket policy allows public
access.

Enabling this setting doesn't affect existing bucket policies.


=head2 IgnorePublicAcls => Bool

  Specifies whether Amazon S3 should ignore public ACLs for this bucket
and objects in this bucket. Setting this element to C<TRUE> causes
Amazon S3 to ignore all public ACLs on this bucket and objects in this
bucket.

Enabling this setting doesn't affect the persistence of any existing
ACLs and doesn't prevent new public ACLs from being set.


=head2 RestrictPublicBuckets => Bool

  Specifies whether Amazon S3 should restrict public bucket policies for
this bucket. Setting this element to C<TRUE> restricts access to this
bucket to only AWS services and authorized users within this account if
the bucket has a public policy.

Enabling this setting doesn't affect previously stored bucket policies,
except that public and cross-account access within any public bucket
policy, including non-public delegation to specific accounts, is
blocked.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

