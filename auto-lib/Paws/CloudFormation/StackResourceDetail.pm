package Paws::CloudFormation::StackResourceDetail;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Paws::API::TimeStamp', required => 1);
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has Metadata => (is => 'ro', isa => 'Str');
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has ResourceStatus => (is => 'ro', isa => 'Str', required => 1);
  has ResourceStatusReason => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::StackResourceDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::StackResourceDetail object:

  $service_obj->Method(Att1 => { Description => $value, ..., StackName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::StackResourceDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Contains detailed information about the specified stack resource.

=head1 ATTRIBUTES


=head2 Description => Str

  User defined description associated with the resource.


=head2 B<REQUIRED> LastUpdatedTimestamp => L<Paws::API::TimeStamp>

  Time the status was updated.


=head2 B<REQUIRED> LogicalResourceId => Str

  The logical name of the resource specified in the template.


=head2 Metadata => Str

  The JSON format content of the C<Metadata> attribute declared for the
resource. For more information, see Metadata Attribute in the AWS
CloudFormation User Guide.


=head2 PhysicalResourceId => Str

  The name or unique identifier that corresponds to a physical instance
ID of a resource supported by AWS CloudFormation.


=head2 B<REQUIRED> ResourceStatus => Str

  Current status of the resource.


=head2 ResourceStatusReason => Str

  Success/failure message associated with the resource.


=head2 B<REQUIRED> ResourceType => Str

  Type of resource. ((For more information, go to AWS Resource Types
Reference in the AWS CloudFormation User Guide.)


=head2 StackId => Str

  Unique identifier of the stack.


=head2 StackName => Str

  The name associated with the stack.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

