package Paws::Greengrass::SecretsManagerSecretResourceData;
  use Moose;
  has AdditionalStagingLabelsToDownload => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ARN => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::SecretsManagerSecretResourceData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::SecretsManagerSecretResourceData object:

  $service_obj->Method(Att1 => { AdditionalStagingLabelsToDownload => $value, ..., ARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::SecretsManagerSecretResourceData object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalStagingLabelsToDownload

=head1 DESCRIPTION

Attributes that define a secret resource, which references a secret
from AWS Secrets Manager. AWS IoT Greengrass stores a local, encrypted
copy of the secret on the Greengrass core, where it can be securely
accessed by connectors and Lambda functions.

=head1 ATTRIBUTES


=head2 AdditionalStagingLabelsToDownload => ArrayRef[Str|Undef]

  Optional. The staging labels whose values you want to make available on
the core, in addition to ''AWSCURRENT''.


=head2 ARN => Str

  The ARN of the Secrets Manager secret to make available on the core.
The value of the secret's latest version (represented by the
''AWSCURRENT'' staging label) is included by default.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

