package Paws::AlexaForBusiness::DeveloperInfo;
  use Moose;
  has DeveloperName => (is => 'ro', isa => 'Str');
  has Email => (is => 'ro', isa => 'Str');
  has PrivacyPolicy => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::DeveloperInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::DeveloperInfo object:

  $service_obj->Method(Att1 => { DeveloperName => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::DeveloperInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->DeveloperName

=head1 DESCRIPTION

The details about the developer that published the skill.

=head1 ATTRIBUTES


=head2 DeveloperName => Str

  The name of the developer.


=head2 Email => Str

  The email of the developer.


=head2 PrivacyPolicy => Str

  The URL of the privacy policy.


=head2 Url => Str

  The website of the developer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

