package Paws::CloudFront::ContentTypeProfile;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', required => 1);
  has Format => (is => 'ro', isa => 'Str', required => 1);
  has ProfileId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ContentTypeProfile

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::ContentTypeProfile object:

  $service_obj->Method(Att1 => { ContentType => $value, ..., ProfileId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::ContentTypeProfile object:

  $result = $service_obj->Method(...);
  $result->Att1->ContentType

=head1 DESCRIPTION

A field-level encryption content type profile.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContentType => Str

  The content type for a field-level encryption content type-profile
mapping.


=head2 B<REQUIRED> Format => Str

  The format for a field-level encryption content type-profile mapping.


=head2 ProfileId => Str

  The profile ID for a field-level encryption content type-profile
mapping.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

