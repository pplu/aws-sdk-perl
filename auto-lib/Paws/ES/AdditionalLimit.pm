package Paws::ES::AdditionalLimit;
  use Moose;
  has LimitName => (is => 'ro', isa => 'Str');
  has LimitValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::AdditionalLimit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::AdditionalLimit object:

  $service_obj->Method(Att1 => { LimitName => $value, ..., LimitValues => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::AdditionalLimit object:

  $result = $service_obj->Method(...);
  $result->Att1->LimitName

=head1 DESCRIPTION

List of limits that are specific to a given InstanceType and for each
of it's C< InstanceRole > .

=head1 ATTRIBUTES


=head2 LimitName => Str

  Name of Additional Limit is specific to a given InstanceType and for
each of it's C< InstanceRole > etc.

Attributes and their details:

=over

=item * MaximumNumberOfDataNodesSupported

This attribute will be present in Master node only to specify how much
data nodes upto which given C< ESPartitionInstanceType > can support as
master node.

=item * MaximumNumberOfDataNodesWithoutMasterNode

This attribute will be present in Data node only to specify how much
data nodes of given C< ESPartitionInstanceType > upto which you don't
need any master nodes to govern them.

=back



=head2 LimitValues => ArrayRef[Str|Undef]

  Value for given C< AdditionalLimit$LimitName > .



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

