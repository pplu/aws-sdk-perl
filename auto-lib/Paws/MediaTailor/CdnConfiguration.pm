package Paws::MediaTailor::CdnConfiguration;
  use Moose;
  has AdSegmentUrlPrefix => (is => 'ro', isa => 'Str');
  has ContentSegmentUrlPrefix => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::CdnConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaTailor::CdnConfiguration object:

  $service_obj->Method(Att1 => { AdSegmentUrlPrefix => $value, ..., ContentSegmentUrlPrefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaTailor::CdnConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AdSegmentUrlPrefix

=head1 DESCRIPTION

The configuration for using a content delivery network (CDN), like
Amazon CloudFront, for content and ad segment management.

=head1 ATTRIBUTES


=head2 AdSegmentUrlPrefix => Str

  A non-default content delivery network (CDN) to serve ad segments. By
default, AWS Elemental MediaTailor uses Amazon CloudFront with default
cache settings as its CDN for ad segments. To set up an alternate CDN,
create a rule in your CDN for the following origin:
ads.mediatailor.E<lt>regionE<gt>.amazonaws.com. Then specify the rule's
name in this AdSegmentUrlPrefix. When AWS Elemental MediaTailor serves
a manifest, it reports your CDN as the source for ad segments.


=head2 ContentSegmentUrlPrefix => Str

  A content delivery network (CDN) to cache content segments, so that
content requests donE<rsquo>t always have to go to the origin server.
First, create a rule in your CDN for the content segment origin server.
Then specify the rule's name in this ContentSegmentUrlPrefix. When AWS
Elemental MediaTailor serves a manifest, it reports your CDN as the
source for content segments.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

