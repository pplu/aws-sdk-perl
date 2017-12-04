package Paws::ElasticTranscoder::Permission;
  use Moose;
  has Access => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Grantee => (is => 'ro', isa => 'Str');
  has GranteeType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::Permission

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::Permission object:

  $service_obj->Method(Att1 => { Access => $value, ..., GranteeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::Permission object:

  $result = $service_obj->Method(...);
  $result->Att1->Access

=head1 DESCRIPTION

The C<Permission> structure.

=head1 ATTRIBUTES


=head2 Access => ArrayRef[Str|Undef]

  The permission that you want to give to the AWS user that is listed in
Grantee. Valid values include:

=over

=item *

C<READ>: The grantee can read the thumbnails and metadata for
thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.

=item *

C<READ_ACP>: The grantee can read the object ACL for thumbnails that
Elastic Transcoder adds to the Amazon S3 bucket.

=item *

C<WRITE_ACP>: The grantee can write the ACL for the thumbnails that
Elastic Transcoder adds to the Amazon S3 bucket.

=item *

C<FULL_CONTROL>: The grantee has READ, READ_ACP, and WRITE_ACP
permissions for the thumbnails that Elastic Transcoder adds to the
Amazon S3 bucket.

=back



=head2 Grantee => Str

  The AWS user or group that you want to have access to transcoded files
and playlists. To identify the user or group, you can specify the
canonical user ID for an AWS account, an origin access identity for a
CloudFront distribution, the registered email address of an AWS
account, or a predefined Amazon S3 group.


=head2 GranteeType => Str

  The type of value that appears in the Grantee object:

=over

=item *

C<Canonical>: Either the canonical user ID for an AWS account or an
origin access identity for an Amazon CloudFront distribution.

A canonical user ID is not the same as an AWS account number.

=item *

C<Email>: The registered email address of an AWS account.

=item *

C<Group>: One of the following predefined Amazon S3 groups:
C<AllUsers>, C<AuthenticatedUsers>, or C<LogDelivery>.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

