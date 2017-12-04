package Paws::LexModels::Intent;
  use Moose;
  has IntentName => (is => 'ro', isa => 'Str', request_name => 'intentName', traits => ['NameInRequest'], required => 1);
  has IntentVersion => (is => 'ro', isa => 'Str', request_name => 'intentVersion', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::Intent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::Intent object:

  $service_obj->Method(Att1 => { IntentName => $value, ..., IntentVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::Intent object:

  $result = $service_obj->Method(...);
  $result->Att1->IntentName

=head1 DESCRIPTION

Identifies the specific version of an intent.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IntentName => Str

  The name of the intent.


=head2 B<REQUIRED> IntentVersion => Str

  The version of the intent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

