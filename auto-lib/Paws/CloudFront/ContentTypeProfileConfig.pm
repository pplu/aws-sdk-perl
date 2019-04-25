package Paws::CloudFront::ContentTypeProfileConfig;
  use Moose;
  has ContentTypeProfiles => (is => 'ro', isa => 'Paws::CloudFront::ContentTypeProfiles');
  has ForwardWhenContentTypeIsUnknown => (is => 'ro', isa => 'Bool', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ContentTypeProfileConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::ContentTypeProfileConfig object:

  $service_obj->Method(Att1 => { ContentTypeProfiles => $value, ..., ForwardWhenContentTypeIsUnknown => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::ContentTypeProfileConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ContentTypeProfiles

=head1 DESCRIPTION

The configuration for a field-level encryption content type-profile
mapping.

=head1 ATTRIBUTES


=head2 ContentTypeProfiles => L<Paws::CloudFront::ContentTypeProfiles>

  The configuration for a field-level encryption content type-profile.


=head2 B<REQUIRED> ForwardWhenContentTypeIsUnknown => Bool

  The setting in a field-level encryption content type-profile mapping
that specifies what to do when an unknown content type is provided for
the profile. If true, content is forwarded without being encrypted when
the content type is unknown. If false (the default), an error is
returned when the content type is unknown.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

