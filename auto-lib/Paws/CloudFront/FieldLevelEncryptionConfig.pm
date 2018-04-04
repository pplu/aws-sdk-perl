package Paws::CloudFront::FieldLevelEncryptionConfig;
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has Comment => (is => 'ro', isa => 'Str');
  has ContentTypeProfileConfig => (is => 'ro', isa => 'Paws::CloudFront::ContentTypeProfileConfig');
  has QueryArgProfileConfig => (is => 'ro', isa => 'Paws::CloudFront::QueryArgProfileConfig');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::FieldLevelEncryptionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::FieldLevelEncryptionConfig object:

  $service_obj->Method(Att1 => { CallerReference => $value, ..., QueryArgProfileConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::FieldLevelEncryptionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->CallerReference

=head1 DESCRIPTION

A complex data type that includes the profile configurations specified
for field-level encryption.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallerReference => Str

  A unique number that ensures the request can't be replayed.


=head2 Comment => Str

  An optional comment about the configuration.


=head2 ContentTypeProfileConfig => L<Paws::CloudFront::ContentTypeProfileConfig>

  A complex data type that specifies when to forward content if a content
type isn't recognized and profiles to use as by default in a request if
a query argument doesn't specify a profile to use.


=head2 QueryArgProfileConfig => L<Paws::CloudFront::QueryArgProfileConfig>

  A complex data type that specifies when to forward content if a profile
isn't found and the profile that can be provided as a query argument in
a request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

