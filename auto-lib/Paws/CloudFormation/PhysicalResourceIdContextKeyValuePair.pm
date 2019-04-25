package Paws::CloudFormation::PhysicalResourceIdContextKeyValuePair;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::PhysicalResourceIdContextKeyValuePair

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::PhysicalResourceIdContextKeyValuePair object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::PhysicalResourceIdContextKeyValuePair object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Context information that enables AWS CloudFormation to uniquely
identify a resource. AWS CloudFormation uses context key-value pairs in
cases where a resource's logical and physical IDs are not enough to
uniquely identify that resource. Each context key-value pair specifies
a resource that contains the targeted resource.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The resource context key.


=head2 B<REQUIRED> Value => Str

  The resource context value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

