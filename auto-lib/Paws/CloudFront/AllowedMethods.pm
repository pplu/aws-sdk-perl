package Paws::CloudFront::AllowedMethods;
  use Moose;
  has CachedMethods => (is => 'ro', isa => 'Paws::CloudFront::CachedMethods');
  has Items => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'Method', traits => ['NameInRequest'], required => 1);
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::AllowedMethods

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::AllowedMethods object:

  $service_obj->Method(Att1 => { CachedMethods => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::AllowedMethods object:

  $result = $service_obj->Method(...);
  $result->Att1->CachedMethods

=head1 DESCRIPTION

A complex type that controls which HTTP methods CloudFront processes
and forwards to your Amazon S3 bucket or your custom origin. There are
three choices:

=over

=item *

CloudFront forwards only C<GET> and C<HEAD> requests.

=item *

CloudFront forwards only C<GET>, C<HEAD>, and C<OPTIONS> requests.

=item *

CloudFront forwards C<GET, HEAD, OPTIONS, PUT, PATCH, POST>, and
C<DELETE> requests.

=back

If you pick the third choice, you may need to restrict access to your
Amazon S3 bucket or to your custom origin so users can't perform
operations that you don't want them to. For example, you might not want
users to have permissions to delete objects from your origin.

=head1 ATTRIBUTES


=head2 CachedMethods => L<Paws::CloudFront::CachedMethods>

  


=head2 B<REQUIRED> Items => ArrayRef[Str|Undef]

  A complex type that contains the HTTP methods that you want CloudFront
to process and forward to your origin.


=head2 B<REQUIRED> Quantity => Int

  The number of HTTP methods that you want CloudFront to forward to your
origin. Valid values are 2 (for C<GET> and C<HEAD> requests), 3 (for
C<GET>, C<HEAD>, and C<OPTIONS> requests) and 7 (for C<GET, HEAD,
OPTIONS, PUT, PATCH, POST>, and C<DELETE> requests).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

