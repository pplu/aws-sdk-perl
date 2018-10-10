package Paws::Connect::Dimensions;
  use Moose;
  has Channel => (is => 'ro', isa => 'Str');
  has Queue => (is => 'ro', isa => 'Paws::Connect::QueueReference');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::Dimensions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::Dimensions object:

  $service_obj->Method(Att1 => { Channel => $value, ..., Queue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::Dimensions object:

  $result = $service_obj->Method(...);
  $result->Att1->Channel

=head1 DESCRIPTION

A C<Dimensions> object that includes the Channel and Queue for the
metric.

=head1 ATTRIBUTES


=head2 Channel => Str

  The channel used for grouping and filters. Only VOICE is supported.


=head2 Queue => L<Paws::Connect::QueueReference>

  A C<QueueReference> object used as one part of dimension for the
metrics results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

