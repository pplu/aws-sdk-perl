package Paws::SageMaker::AppDetails;
  use Moose;
  has AppName => (is => 'ro', isa => 'Str');
  has AppType => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DomainId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UserProfileName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AppDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AppDetails object:

  $service_obj->Method(Att1 => { AppName => $value, ..., UserProfileName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AppDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AppName

=head1 DESCRIPTION

The app's details.

=head1 ATTRIBUTES


=head2 AppName => Str

  The name of the app.


=head2 AppType => Str

  The type of app.


=head2 CreationTime => Str

  The creation time.


=head2 DomainId => Str

  The domain ID.


=head2 Status => Str

  The status.


=head2 UserProfileName => Str

  The user profile name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

