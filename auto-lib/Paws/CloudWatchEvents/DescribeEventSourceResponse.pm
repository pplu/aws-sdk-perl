
package Paws::CloudWatchEvents::DescribeEventSourceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has ExpirationTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::DescribeEventSourceResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the partner event source.


=head2 CreatedBy => Str

The name of the SaaS partner that created the event source.


=head2 CreationTime => Str

The date and time that the event source was created.


=head2 ExpirationTime => Str

The date and time that the event source will expire if you do not
create a matching event bus.


=head2 Name => Str

The name of the partner event source.


=head2 State => Str

The state of the event source. If it is ACTIVE, you have already
created a matching event bus for this event source, and that event bus
is active. If it is PENDING, either you haven't yet created a matching
event bus, or that event bus is deactivated. If it is DELETED, you have
created a matching event bus, but the event source has since been
deleted.

Valid values are: C<"PENDING">, C<"ACTIVE">, C<"DELETED">
=head2 _request_id => Str


=cut

1;