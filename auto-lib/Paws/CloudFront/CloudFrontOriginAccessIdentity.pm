package Paws::CloudFront::CloudFrontOriginAccessIdentity;
  use Moose;
  has CloudFrontOriginAccessIdentityConfig => (is => 'ro', isa => 'Paws::CloudFront::CloudFrontOriginAccessIdentityConfig');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has S3CanonicalUserId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CloudFrontOriginAccessIdentity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::CloudFrontOriginAccessIdentity object:

  $service_obj->Method(Att1 => { CloudFrontOriginAccessIdentityConfig => $value, ..., S3CanonicalUserId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::CloudFrontOriginAccessIdentity object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudFrontOriginAccessIdentityConfig

=head1 DESCRIPTION

CloudFront origin access identity.

=head1 ATTRIBUTES


=head2 CloudFrontOriginAccessIdentityConfig => L<Paws::CloudFront::CloudFrontOriginAccessIdentityConfig>

  The current configuration information for the identity.


=head2 B<REQUIRED> Id => Str

  The ID for the origin access identity, for example, C<E74FTE3AJFJ256A>.


=head2 B<REQUIRED> S3CanonicalUserId => Str

  The Amazon S3 canonical user ID for the origin access identity, used
when giving the origin access identity read permission to an object in
Amazon S3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

