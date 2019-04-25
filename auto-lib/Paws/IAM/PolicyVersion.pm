package Paws::IAM::PolicyVersion;
  use Moose;
  has CreateDate => (is => 'ro', isa => 'Str');
  has Document => (is => 'ro', isa => 'Str', decode_as => 'URLJSON', method => 'Policy', traits => ['JSONAttribute']);
  has IsDefaultVersion => (is => 'ro', isa => 'Bool');
  has VersionId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::PolicyVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::PolicyVersion object:

  $service_obj->Method(Att1 => { CreateDate => $value, ..., VersionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::PolicyVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->CreateDate

=head1 DESCRIPTION

Contains information about a version of a managed policy.

This data type is used as a response element in the
CreatePolicyVersion, GetPolicyVersion, ListPolicyVersions, and
GetAccountAuthorizationDetails operations.

For more information about managed policies, refer to Managed Policies
and Inline Policies
(http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
in the I<Using IAM> guide.

=head1 ATTRIBUTES


=head2 CreateDate => Str

  The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when the policy version was created.


=head2 Document => Str

  The policy document.

The policy document is returned in the response to the GetPolicyVersion
and GetAccountAuthorizationDetails operations. It is not returned in
the response to the CreatePolicyVersion or ListPolicyVersions
operations.

The policy document returned in this structure is URL-encoded compliant
with RFC 3986 (https://tools.ietf.org/html/rfc3986). You can use a URL
decoding method to convert the policy back to plain JSON text. For
example, if you use Java, you can use the C<decode> method of the
C<java.net.URLDecoder> utility class in the Java SDK. Other languages
and SDKs provide similar functionality.


=head2 IsDefaultVersion => Bool

  Specifies whether the policy version is set as the policy's default
version.


=head2 VersionId => Str

  The identifier for the policy version.

Policy version identifiers always begin with C<v> (always lowercase).
When a policy is created, the first policy version is C<v1>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

