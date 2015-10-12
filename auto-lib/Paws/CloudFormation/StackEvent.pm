package Paws::CloudFormation::StackEvent;
  use Moose;
  has EventId => (is => 'ro', isa => 'Str', required => 1);
  has LogicalResourceId => (is => 'ro', isa => 'Str');
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has ResourceProperties => (is => 'ro', isa => 'Str');
  has ResourceStatus => (is => 'ro', isa => 'Str');
  has ResourceStatusReason => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has Timestamp => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::StackEvent

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::StackEvent object:

  $service_obj->Method(Att1 => { EventId => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::StackEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->EventId

=head1 ATTRIBUTES

=head2 B<REQUIRED> EventId => Str

  The unique ID of this event.

=head2 LogicalResourceId => Str

  The logical name of the resource specified in the template.

=head2 PhysicalResourceId => Str

  The name or unique identifier associated with the physical instance of
the resource.

=head2 ResourceProperties => Str

  BLOB of the properties used to create the resource.

=head2 ResourceStatus => Str

  Current status of the resource.

=head2 ResourceStatusReason => Str

  Success/failure message associated with the resource.

=head2 ResourceType => Str

  Type of resource. (For more information, go to AWS Resource Types
Reference in the AWS CloudFormation User Guide.)

=head2 B<REQUIRED> StackId => Str

  The unique ID name of the instance of the stack.

=head2 B<REQUIRED> StackName => Str

  The name associated with a stack.

=head2 B<REQUIRED> Timestamp => Str

  Time the status was updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

