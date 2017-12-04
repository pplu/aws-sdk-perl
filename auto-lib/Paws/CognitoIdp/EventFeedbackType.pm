package Paws::CognitoIdp::EventFeedbackType;
  use Moose;
  has FeedbackDate => (is => 'ro', isa => 'Str');
  has FeedbackValue => (is => 'ro', isa => 'Str', required => 1);
  has Provider => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::EventFeedbackType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::EventFeedbackType object:

  $service_obj->Method(Att1 => { FeedbackDate => $value, ..., Provider => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::EventFeedbackType object:

  $result = $service_obj->Method(...);
  $result->Att1->FeedbackDate

=head1 DESCRIPTION

Specifies the event feedback type.

=head1 ATTRIBUTES


=head2 FeedbackDate => Str

  The event feedback date.


=head2 B<REQUIRED> FeedbackValue => Str

  The event feedback value.


=head2 B<REQUIRED> Provider => Str

  The provider.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

