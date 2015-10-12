package Paws::CloudFront::InvalidationBatch;
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has Paths => (is => 'ro', isa => 'Paws::CloudFront::Paths', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::InvalidationBatch

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::InvalidationBatch object:

  $service_obj->Method(Att1 => { CallerReference => $value, ..., Paths => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::InvalidationBatch object:

  $result = $service_obj->Method(...);
  $result->Att1->CallerReference

=head1 ATTRIBUTES

=head2 B<REQUIRED> CallerReference => Str

  A unique name that ensures the request can't be replayed. If the
CallerReference is new (no matter the content of the Path object), a
new distribution is created. If the CallerReference is a value you
already sent in a previous request to create an invalidation batch, and
the content of each Path element is identical to the original request,
the response includes the same information returned to the original
request. If the CallerReference is a value you already sent in a
previous request to create a distribution but the content of any Path
is different from the original request, CloudFront returns an
InvalidationBatchAlreadyExists error.

=head2 B<REQUIRED> Paths => L<Paws::CloudFront::Paths>

  The path of the object to invalidate. The path is relative to the
distribution and must begin with a slash (/). You must enclose each
invalidation object with the Path element tags. If the path includes
non-ASCII characters or unsafe characters as defined in RFC 1783
(http://www.ietf.org/rfc/rfc1738.txt), URL encode those characters. Do
not URL encode any other characters in the path, or CloudFront will not
invalidate the old version of the updated object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

