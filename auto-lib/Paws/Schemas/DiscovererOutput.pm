package Paws::Schemas::DiscovererOutput;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DiscovererArn => (is => 'ro', isa => 'Str');
  has DiscovererId => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Schemas::Tags', request_name => 'tags', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::DiscovererOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Schemas::DiscovererOutput object:

  $service_obj->Method(Att1 => { Description => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Schemas::DiscovererOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

  The description of the discoverer.


=head2 DiscovererArn => Str

  The ARN of the discoverer.


=head2 DiscovererId => Str

  The ID of the discoverer.


=head2 SourceArn => Str

  The ARN of the event bus.


=head2 State => Str

  The state of the discoverer.


=head2 Tags => L<Paws::Schemas::Tags>

  Tags associated with the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

