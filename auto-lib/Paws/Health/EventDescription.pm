package Paws::Health::EventDescription;
  use Moose;
  has LatestDescription => (is => 'ro', isa => 'Str', request_name => 'latestDescription', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::EventDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Health::EventDescription object:

  $service_obj->Method(Att1 => { LatestDescription => $value, ..., LatestDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Health::EventDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->LatestDescription

=head1 DESCRIPTION

The detailed description of the event. Included in the information
returned by the DescribeEventDetails operation.

=head1 ATTRIBUTES


=head2 LatestDescription => Str

  The most recent description of the event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

