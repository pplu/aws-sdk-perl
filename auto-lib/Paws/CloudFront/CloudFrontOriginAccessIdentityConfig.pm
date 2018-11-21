package Paws::CloudFront::CloudFrontOriginAccessIdentityConfig;
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has Comment => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CloudFrontOriginAccessIdentityConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::CloudFrontOriginAccessIdentityConfig object:

  $service_obj->Method(Att1 => { CallerReference => $value, ..., Comment => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::CloudFrontOriginAccessIdentityConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->CallerReference

=head1 DESCRIPTION

Origin access identity configuration. Send a C<GET> request to the
C</I<CloudFront API version>/CloudFront/identity ID/config> resource.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallerReference => Str

  A unique value (for example, a date-time stamp) that ensures that the
request can't be replayed.

If the value of C<CallerReference> is new (regardless of the content of
the C<CloudFrontOriginAccessIdentityConfig> object), a new origin
access identity is created.

If the C<CallerReference> is a value already sent in a previous
identity request, and the content of the
C<CloudFrontOriginAccessIdentityConfig> is identical to the original
request (ignoring white space), the response includes the same
information returned to the original request.

If the C<CallerReference> is a value you already sent in a previous
request to create an identity, but the content of the
C<CloudFrontOriginAccessIdentityConfig> is different from the original
request, CloudFront returns a
C<CloudFrontOriginAccessIdentityAlreadyExists> error.


=head2 B<REQUIRED> Comment => Str

  Any comments you want to include about the origin access identity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

