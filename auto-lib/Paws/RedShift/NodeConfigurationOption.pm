package Paws::RedShift::NodeConfigurationOption;
  use Moose;
  has EstimatedDiskUtilizationPercent => (is => 'ro', isa => 'Num');
  has Mode => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::NodeConfigurationOption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::NodeConfigurationOption object:

  $service_obj->Method(Att1 => { EstimatedDiskUtilizationPercent => $value, ..., NumberOfNodes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::NodeConfigurationOption object:

  $result = $service_obj->Method(...);
  $result->Att1->EstimatedDiskUtilizationPercent

=head1 DESCRIPTION

A list of node configurations.

=head1 ATTRIBUTES


=head2 EstimatedDiskUtilizationPercent => Num

  The estimated disk utilizaton percentage.


=head2 Mode => Str

  The category of the node configuration recommendation.


=head2 NodeType => Str

  The node type, such as, "ds2.8xlarge".


=head2 NumberOfNodes => Int

  The number of nodes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

