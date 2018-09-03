package Paws::Signer::SigningProfile;
  use Moose;
  has PlatformId => (is => 'ro', isa => 'Str', request_name => 'platformId', traits => ['NameInRequest']);
  has ProfileName => (is => 'ro', isa => 'Str', request_name => 'profileName', traits => ['NameInRequest']);
  has SigningMaterial => (is => 'ro', isa => 'Paws::Signer::SigningMaterial', request_name => 'signingMaterial', traits => ['NameInRequest']);
  has SigningParameters => (is => 'ro', isa => 'Paws::Signer::SigningParameters', request_name => 'signingParameters', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::SigningProfile

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Signer::SigningProfile object:

  $service_obj->Method(Att1 => { PlatformId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Signer::SigningProfile object:

  $result = $service_obj->Method(...);
  $result->Att1->PlatformId

=head1 DESCRIPTION

Contains information about the ACM certificates and AWS Signer
configuration parameters that can be used by a given AWS Signer user.

=head1 ATTRIBUTES


=head2 PlatformId => Str

  The ID of a platform that is available for use by a signing profile.


=head2 ProfileName => Str

  The name of the AWS Signer profile.


=head2 SigningMaterial => L<Paws::Signer::SigningMaterial>

  The ACM certificate that is available for use by a signing profile.


=head2 SigningParameters => L<Paws::Signer::SigningParameters>

  The parameters that are available for use by an AWS Signer user.


=head2 Status => Str

  The status of an AWS Signer profile.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

