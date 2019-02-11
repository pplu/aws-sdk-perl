package Paws::Connect::Filters;
  use Moose;
  has Channels => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Queues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::Filters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::Filters object:

  $service_obj->Method(Att1 => { Channels => $value, ..., Queues => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::Filters object:

  $result = $service_obj->Method(...);
  $result->Att1->Channels

=head1 DESCRIPTION

The filter, either channel or queues, to apply to the metric results
retrieved.

=head1 ATTRIBUTES


=head2 Channels => ArrayRef[Str|Undef]

  The Channel to use as a filter for the metrics returned. Only VOICE is
supported.


=head2 Queues => ArrayRef[Str|Undef]

  A list of up to 100 queue IDs or queue ARNs to use to filter the
metrics retrieved. You can include both IDs and ARNs in a request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

