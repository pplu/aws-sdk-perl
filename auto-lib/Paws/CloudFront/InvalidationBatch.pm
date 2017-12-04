package Paws::CloudFront::InvalidationBatch;
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has Paths => (is => 'ro', isa => 'Paws::CloudFront::Paths', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::InvalidationBatch

=head1 USAGE

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

=head1 DESCRIPTION

An invalidation batch.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallerReference => Str

  A value that you specify to uniquely identify an invalidation request.
CloudFront uses the value to prevent you from accidentally resubmitting
an identical request. Whenever you create a new invalidation request,
you must specify a new value for C<CallerReference> and change other
values in the request as applicable. One way to ensure that the value
of C<CallerReference> is unique is to use a C<timestamp>, for example,
C<20120301090000>.

If you make a second invalidation request with the same value for
C<CallerReference>, and if the rest of the request is the same,
CloudFront doesn't create a new invalidation request. Instead,
CloudFront returns information about the invalidation request that you
previously created with the same C<CallerReference>.

If C<CallerReference> is a value you already sent in a previous
invalidation batch request but the content of any C<Path> is different
from the original request, CloudFront returns an
C<InvalidationBatchAlreadyExists> error.


=head2 B<REQUIRED> Paths => L<Paws::CloudFront::Paths>

  A complex type that contains information about the objects that you
want to invalidate. For more information, see Specifying the Objects to
Invalidate
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects)
in the I<Amazon CloudFront Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

