package Paws::CloudFront::StreamingDistributionConfigWithTags;
  use Moose;
  has StreamingDistributionConfig => (is => 'ro', isa => 'Paws::CloudFront::StreamingDistributionConfig', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CloudFront::Tags', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::StreamingDistributionConfigWithTags

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::StreamingDistributionConfigWithTags object:

  $service_obj->Method(Att1 => { StreamingDistributionConfig => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::StreamingDistributionConfigWithTags object:

  $result = $service_obj->Method(...);
  $result->Att1->StreamingDistributionConfig

=head1 DESCRIPTION

A streaming distribution Configuration and a list of tags to be
associated with the streaming distribution.

=head1 ATTRIBUTES


=head2 B<REQUIRED> StreamingDistributionConfig => L<Paws::CloudFront::StreamingDistributionConfig>

  A streaming distribution Configuration.


=head2 B<REQUIRED> Tags => L<Paws::CloudFront::Tags>

  A complex type that contains zero or more C<Tag> elements.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

