package Paws::Signer::SigningPlatformOverrides;
  use Moose;
  has SigningConfiguration => (is => 'ro', isa => 'Paws::Signer::SigningConfigurationOverrides', request_name => 'signingConfiguration', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::SigningPlatformOverrides

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Signer::SigningPlatformOverrides object:

  $service_obj->Method(Att1 => { SigningConfiguration => $value, ..., SigningConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Signer::SigningPlatformOverrides object:

  $result = $service_obj->Method(...);
  $result->Att1->SigningConfiguration

=head1 DESCRIPTION

Any overrides that are applied to the signing configuration of an AWS
Signer platform.

=head1 ATTRIBUTES


=head2 SigningConfiguration => L<Paws::Signer::SigningConfigurationOverrides>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

