
package Paws::EMR::UpdateStudio;
  use Moose;
  has DefaultS3Location => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has StudioId => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStudio');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::UpdateStudio - Arguments for method UpdateStudio on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStudio on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method UpdateStudio.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStudio.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    $elasticmapreduce->UpdateStudio(
      StudioId          => 'MyXmlStringMaxLen256',
      DefaultS3Location => 'MyXmlString',             # OPTIONAL
      Description       => 'MyXmlStringMaxLen256',    # OPTIONAL
      Name              => 'MyXmlStringMaxLen256',    # OPTIONAL
      SubnetIds         => [ 'MyString', ... ],       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/UpdateStudio>

=head1 ATTRIBUTES


=head2 DefaultS3Location => Str

The Amazon S3 location to back up Workspaces and notebook files for the
Amazon EMR Studio.



=head2 Description => Str

A detailed description to assign to the Amazon EMR Studio.



=head2 Name => Str

A descriptive name for the Amazon EMR Studio.



=head2 B<REQUIRED> StudioId => Str

The ID of the Amazon EMR Studio to update.



=head2 SubnetIds => ArrayRef[Str|Undef]

A list of subnet IDs to associate with the Amazon EMR Studio. The list
can include new subnet IDs, but must also include all of the subnet IDs
previously associated with the Studio. The list order does not matter.
A Studio can have a maximum of 5 subnets. The subnets must belong to
the same VPC as the Studio.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStudio in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

