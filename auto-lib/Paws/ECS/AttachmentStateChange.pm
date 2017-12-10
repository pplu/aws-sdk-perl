package Paws::ECS::AttachmentStateChange;
  use Moose;
  has AttachmentArn => (is => 'ro', isa => 'Str', request_name => 'attachmentArn', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::AttachmentStateChange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::AttachmentStateChange object:

  $service_obj->Method(Att1 => { AttachmentArn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::AttachmentStateChange object:

  $result = $service_obj->Method(...);
  $result->Att1->AttachmentArn

=head1 DESCRIPTION

An object representing a change in state for a task attachment.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttachmentArn => Str

  The Amazon Resource Name (ARN) of the attachment.


=head2 B<REQUIRED> Status => Str

  The status of the attachment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

