package Paws::Inspector::ResourceGroup;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest'], required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::ResourceGroupTag]', request_name => 'tags', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ResourceGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::ResourceGroup object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::ResourceGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about a resource group. The resource group defines
a set of tags that, when queried, identify the AWS resources that make
up the assessment target. This data type is used as the response
element in the DescribeResourceGroups action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The ARN of the resource group.


=head2 B<REQUIRED> CreatedAt => Str

  The time at which resource group is created.


=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::Inspector::ResourceGroupTag>]

  The tags (key and value pairs) of the resource group. This data type
property is used in the CreateResourceGroup action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

