package Paws::CloudWatchEvents::EventSource;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has ExpirationTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::EventSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::EventSource object:

  $service_obj->Method(Att1 => { Arn => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::EventSource object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A partner event source is created by an SaaS partner. If a customer
creates a partner event bus that matches this event source, that AWS
account can receive events from the partner's applications or services.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the event source.


=head2 CreatedBy => Str

  The name of the partner that created the event source.


=head2 CreationTime => Str

  The date and time when the event source was created.


=head2 ExpirationTime => Str

  The date and time when the event source will expire if the AWS account
doesn't create a matching event bus for it.


=head2 Name => Str

  The name of the event source.


=head2 State => Str

  The state of the event source. If it's C<ACTIVE>, you have already
created a matching event bus for this event source, and that event bus
is active. If it's C<PENDING>, either you haven't yet created a
matching event bus, or that event bus is deactivated. If it's
C<DELETED>, you have created a matching event bus, but the event source
has since been deleted.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

