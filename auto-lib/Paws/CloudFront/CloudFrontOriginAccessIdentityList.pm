package Paws::CloudFront::CloudFrontOriginAccessIdentityList;
  use Moose;
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CloudFront::CloudFrontOriginAccessIdentitySummary]', request_name => 'CloudFrontOriginAccessIdentitySummary', traits => ['NameInRequest']);
  has Marker => (is => 'ro', isa => 'Str', required => 1);
  has MaxItems => (is => 'ro', isa => 'Int', required => 1);
  has NextMarker => (is => 'ro', isa => 'Str');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CloudFrontOriginAccessIdentityList

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::CloudFrontOriginAccessIdentityList object:

  $service_obj->Method(Att1 => { IsTruncated => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::CloudFrontOriginAccessIdentityList object:

  $result = $service_obj->Method(...);
  $result->Att1->IsTruncated

=head1 DESCRIPTION

Lists the origin access identities for CloudFront.Send a C<GET> request
to the C</I<CloudFront API version>/origin-access-identity/cloudfront>
resource. The response includes a C<CloudFrontOriginAccessIdentityList>
element with zero or more C<CloudFrontOriginAccessIdentitySummary>
child elements. By default, your entire list of origin access
identities is returned in one single page. If the list is long, you can
paginate it using the C<MaxItems> and C<Marker> parameters.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IsTruncated => Bool

  A flag that indicates whether more origin access identities remain to
be listed. If your results were truncated, you can make a follow-up
pagination request using the C<Marker> request parameter to retrieve
more items in the list.


=head2 Items => ArrayRef[L<Paws::CloudFront::CloudFrontOriginAccessIdentitySummary>]

  A complex type that contains one
C<CloudFrontOriginAccessIdentitySummary> element for each origin access
identity that was created by the current AWS account.


=head2 B<REQUIRED> Marker => Str

  Use this when paginating results to indicate where to begin in your
list of origin access identities. The results include identities in the
list that occur after the marker. To get the next page of results, set
the C<Marker> to the value of the C<NextMarker> from the current page's
response (which is also the ID of the last identity on that page).


=head2 B<REQUIRED> MaxItems => Int

  The maximum number of origin access identities you want in the response
body.


=head2 NextMarker => Str

  If C<IsTruncated> is C<true>, this element is present and contains the
value you can use for the C<Marker> request parameter to continue
listing your origin access identities where they left off.


=head2 B<REQUIRED> Quantity => Int

  The number of CloudFront origin access identities that were created by
the current AWS account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

