package Paws::CodePipeline::WebhookAuthConfiguration;
  use Moose;
  has AllowedIPRange => (is => 'ro', isa => 'Str');
  has SecretToken => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::WebhookAuthConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::WebhookAuthConfiguration object:

  $service_obj->Method(Att1 => { AllowedIPRange => $value, ..., SecretToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::WebhookAuthConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedIPRange

=head1 DESCRIPTION

The authentication applied to incoming webhook trigger requests.

=head1 ATTRIBUTES


=head2 AllowedIPRange => Str

  The property used to configure acceptance of webhooks within a specific
IP range. For IP, only the AllowedIPRange property must be set, and
this property must be set to a valid CIDR range.


=head2 SecretToken => Str

  The property used to configure GitHub authentication. For GITHUB_HMAC,
only the SecretToken property must be set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

