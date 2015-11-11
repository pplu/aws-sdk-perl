package Paws::ElastiCache::Event;
  use Moose;
  has Date => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::Event

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::Event object:

  $service_obj->Method(Att1 => { Date => $value, ..., SourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::Event object:

  $result = $service_obj->Method(...);
  $result->Att1->Date

=head1 DESCRIPTION

Represents a single occurrence of something interesting within the
system. Some examples of events are creating a cache cluster, adding or
removing a cache node, or rebooting a node.

=head1 ATTRIBUTES


=head2 Date => Str

  The date and time when the event occurred.


=head2 Message => Str

  The text of the event.


=head2 SourceIdentifier => Str

  The identifier for the source of the event. For example, if the event
occurred at the cache cluster level, the identifier would be the name
of the cache cluster.


=head2 SourceType => Str

  Specifies the origin of this event - a cache cluster, a parameter
group, a security group, etc.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

