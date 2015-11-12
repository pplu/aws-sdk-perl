package Paws::CloudFront::Restrictions;
  use Moose;
  has GeoRestriction => (is => 'ro', isa => 'Paws::CloudFront::GeoRestriction', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::Restrictions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::Restrictions object:

  $service_obj->Method(Att1 => { GeoRestriction => $value, ..., GeoRestriction => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::Restrictions object:

  $result = $service_obj->Method(...);
  $result->Att1->GeoRestriction

=head1 DESCRIPTION

A complex type that identifies ways in which you want to restrict
distribution of your content.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GeoRestriction => L<Paws::CloudFront::GeoRestriction>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

