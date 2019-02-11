package Paws::Batch::NodeRangeProperty;
  use Moose;
  has Container => (is => 'ro', isa => 'Paws::Batch::ContainerProperties', request_name => 'container', traits => ['NameInRequest']);
  has TargetNodes => (is => 'ro', isa => 'Str', request_name => 'targetNodes', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::NodeRangeProperty

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::NodeRangeProperty object:

  $service_obj->Method(Att1 => { Container => $value, ..., TargetNodes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::NodeRangeProperty object:

  $result = $service_obj->Method(...);
  $result->Att1->Container

=head1 DESCRIPTION

An object representing the properties of the node range for a
multi-node parallel job.

=head1 ATTRIBUTES


=head2 Container => L<Paws::Batch::ContainerProperties>

  The container details for the node range.


=head2 B<REQUIRED> TargetNodes => Str

  The range of nodes, using node index values. A range of C<0:3>
indicates nodes with index values of C<0> through C<3>. If the starting
range value is omitted (C<:n>), then C<0> is used to start the range.
If the ending range value is omitted (C<n:>), then the highest possible
node index is used to end the range. Your accumulative node ranges must
account for all nodes (0:n). You may nest node ranges, for example 0:10
and 4:5, in which case the 4:5 range properties override the 0:10
properties.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

