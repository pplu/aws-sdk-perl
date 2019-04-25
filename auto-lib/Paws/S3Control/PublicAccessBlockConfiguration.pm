package Paws::S3Control::PublicAccessBlockConfiguration;
  use Moose;
  has BlockPublicAcls => (is => 'ro', isa => 'Bool', request_name => 'BlockPublicAcls', traits => ['NameInRequest']);
  has BlockPublicPolicy => (is => 'ro', isa => 'Bool', request_name => 'BlockPublicPolicy', traits => ['NameInRequest']);
  has IgnorePublicAcls => (is => 'ro', isa => 'Bool', request_name => 'IgnorePublicAcls', traits => ['NameInRequest']);
  has RestrictPublicBuckets => (is => 'ro', isa => 'Bool', request_name => 'RestrictPublicBuckets', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::PublicAccessBlockConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::PublicAccessBlockConfiguration object:

  $service_obj->Method(Att1 => { BlockPublicAcls => $value, ..., RestrictPublicBuckets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::PublicAccessBlockConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockPublicAcls

=head1 DESCRIPTION

The container element for all Public Access Block configuration
options. You can enable the configuration options in any combination.

Amazon S3 considers a bucket policy public unless at least one of the
following conditions is true:

=over

=item 1.

The policy limits access to a set of CIDRs using C<aws:SourceIp>. For
more information on CIDR, see http://www.rfc-editor.org/rfc/rfc4632.txt
(http://www.rfc-editor.org/rfc/rfc4632.txt)

=item 2.

The policy grants permissions, not including any "bad actions," to one
of the following:

=over

=item *

A fixed AWS principal, user, role, or service principal

=item *

A fixed C<aws:SourceArn>

=item *

A fixed C<aws:SourceVpc>

=item *

A fixed C<aws:SourceVpce>

=item *

A fixed C<aws:SourceOwner>

=item *

A fixed C<aws:SourceAccount>

=item *

A fixed value of C<s3:x-amz-server-side-encryption-aws-kms-key-id>

=item *

A fixed value of C<aws:userid> outside the pattern "C<AROLEID:*>"

=back

=back

"Bad actions" are those that could expose the data inside a bucket to
reads or writes by the public. These actions are C<s3:Get*>,
C<s3:List*>, C<s3:AbortMultipartUpload>, C<s3:Delete*>, C<s3:Put*>, and
C<s3:RestoreObject>.

The star notation for bad actions indicates that all matching
operations are considered bad actions. For example, because C<s3:Get*>
is a bad action, C<s3:GetObject>, C<s3:GetObjectVersion>, and
C<s3:GetObjectAcl> are all bad actions.

=head1 ATTRIBUTES


=head2 BlockPublicAcls => Bool

  Specifies whether Amazon S3 should block public ACLs for buckets in
this account. Setting this element to C<TRUE> causes the following
behavior:

=over

=item *

PUT Bucket acl and PUT Object acl calls will fail if the specified ACL
allows public access.

=item *

PUT Object calls will fail if the request includes an object ACL.

=back

Note that enabling this setting doesn't affect existing policies or
ACLs.


=head2 BlockPublicPolicy => Bool

  Specifies whether Amazon S3 should block public bucket policies for
buckets in this account. Setting this element to C<TRUE> causes Amazon
S3 to reject calls to PUT Bucket policy if the specified bucket policy
allows public access.

Note that enabling this setting doesn't affect existing bucket
policies.


=head2 IgnorePublicAcls => Bool

  Specifies whether Amazon S3 should ignore public ACLs for buckets in
this account. Setting this element to C<TRUE> causes Amazon S3 to
ignore all public ACLs on buckets in this account and any objects that
they contain.

Note that enabling this setting doesn't affect the persistence of any
existing ACLs and doesn't prevent new public ACLs from being set.


=head2 RestrictPublicBuckets => Bool

  Specifies whether Amazon S3 should restrict public bucket policies for
buckets in this account. If this element is set to C<TRUE>, then only
the bucket owner and AWS Services can access buckets with public
policies.

Note that enabling this setting doesn't affect previously stored bucket
policies, except that public and cross-account access within any public
bucket policy, including non-public delegation to specific accounts, is
blocked.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

