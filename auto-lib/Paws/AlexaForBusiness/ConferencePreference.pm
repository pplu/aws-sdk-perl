package Paws::AlexaForBusiness::ConferencePreference;
  use Moose;
  has DefaultConferenceProviderArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ConferencePreference

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::ConferencePreference object:

  $service_obj->Method(Att1 => { DefaultConferenceProviderArn => $value, ..., DefaultConferenceProviderArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::ConferencePreference object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultConferenceProviderArn

=head1 DESCRIPTION

The default conference provider that is used if no other scheduled
meetings are detected.

=head1 ATTRIBUTES


=head2 DefaultConferenceProviderArn => Str

  The ARN of the default conference provider.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

