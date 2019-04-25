
package Paws::Inspector::CreateResourceGroup;
  use Moose;
  has ResourceGroupTags => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::ResourceGroupTag]', traits => ['NameInRequest'], request_name => 'resourceGroupTags' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResourceGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::CreateResourceGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateResourceGroup - Arguments for method CreateResourceGroup on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResourceGroup on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method CreateResourceGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResourceGroup.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
   # Create resource group
   # Creates a resource group using the specified set of tags (key and value
   # pairs) that are used to select the EC2 instances to be included in an
   # Amazon Inspector assessment target. The created resource group is then used
   # to create an Amazon Inspector assessment target.
    my $CreateResourceGroupResponse = $inspector->CreateResourceGroup(
      {
        'ResourceGroupTags' => [

          {
            'Key'   => 'Name',
            'Value' => 'example'
          }
        ]
      }
    );

    # Results:
    my $resourceGroupArn = $CreateResourceGroupResponse->resourceGroupArn;

    # Returns a L<Paws::Inspector::CreateResourceGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/CreateResourceGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceGroupTags => ArrayRef[L<Paws::Inspector::ResourceGroupTag>]

A collection of keys and an array of possible values,
'[{"key":"key1","values":["Value1","Value2"]},{"key":"Key2","values":["Value3"]}]'.

For example,'[{"key":"Name","values":["TestEC2Instance"]}]'.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResourceGroup in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

