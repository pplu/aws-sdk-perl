package Paws::Comprehend::EndpointFilter;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has ModelArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::EndpointFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::EndpointFilter object:

  $service_obj->Method(Att1 => { CreationTimeAfter => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::EndpointFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTimeAfter

=head1 DESCRIPTION

The filter used to determine which endpoints are are returned. You can
filter jobs on their name, model, status, or the date and time that
they were created. You can only set one filter at a time.

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

  Specifies a date after which the returned endpoint or endpoints were
created.


=head2 CreationTimeBefore => Str

  Specifies a date before which the returned endpoint or endpoints were
created.


=head2 ModelArn => Str

  The Amazon Resource Number (ARN) of the model to which the endpoint is
attached.


=head2 Status => Str

  Specifies the status of the endpoint being returned. Possible values
are: Creating, Ready, Updating, Deleting, Failed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

