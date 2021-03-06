# Generated by default/object.tt
package Paws::Macie2::BucketPublicAccess;
  use Moose;
  has EffectivePermission => (is => 'ro', isa => 'Str', request_name => 'effectivePermission', traits => ['NameInRequest']);
  has PermissionConfiguration => (is => 'ro', isa => 'Paws::Macie2::BucketPermissionConfiguration', request_name => 'permissionConfiguration', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::BucketPublicAccess

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie2::BucketPublicAccess object:

  $service_obj->Method(Att1 => { EffectivePermission => $value, ..., PermissionConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie2::BucketPublicAccess object:

  $result = $service_obj->Method(...);
  $result->Att1->EffectivePermission

=head1 DESCRIPTION

Provides information about the permissions settings that determine
whether an S3 bucket is publicly accessible.

=head1 ATTRIBUTES


=head2 EffectivePermission => Str

Specifies whether the bucket is publicly accessible due to the
combination of permissions settings that apply to the bucket. Possible
values are:

=over

=item *

NOT_PUBLIC - The bucket isn't publicly accessible.

=item *

PUBLIC - The bucket is publicly accessible.

=item *

UNKNOWN - Amazon Macie can't determine whether the bucket is publicly
accessible.

=back



=head2 PermissionConfiguration => L<Paws::Macie2::BucketPermissionConfiguration>

The account-level and bucket-level permissions settings for the bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

