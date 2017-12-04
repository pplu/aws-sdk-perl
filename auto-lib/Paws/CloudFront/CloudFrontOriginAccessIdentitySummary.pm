package Paws::CloudFront::CloudFrontOriginAccessIdentitySummary;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has S3CanonicalUserId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CloudFrontOriginAccessIdentitySummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::CloudFrontOriginAccessIdentitySummary object:

  $service_obj->Method(Att1 => { Comment => $value, ..., S3CanonicalUserId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::CloudFrontOriginAccessIdentitySummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Comment

=head1 DESCRIPTION

Summary of the information about a CloudFront origin access identity.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Comment => Str

  The comment for this origin access identity, as originally specified
when created.


=head2 B<REQUIRED> Id => Str

  The ID for the origin access identity. For example: C<E74FTE3AJFJ256A>.


=head2 B<REQUIRED> S3CanonicalUserId => Str

  The Amazon S3 canonical user ID for the origin access identity, which
you use when giving the origin access identity read permission to an
object in Amazon S3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

