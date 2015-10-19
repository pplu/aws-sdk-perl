
package Paws::Inspector::CreateResourceGroup;
  use Moose;
  has ResourceGroupTags => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceGroupTags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResourceGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::CreateResourceGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateResourceGroup - Arguments for method CreateResourceGroup on Paws::Inspector

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResourceGroup on the 
Amazon Inspector service. Use the attributes of this class
as arguments to method CreateResourceGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResourceGroup.

As an example:

  $service_obj->CreateResourceGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 ResourceGroupTags => Str

  A collection of keys and an array of possible values in JSON format.

For example, [{ "key1" : ["Value1","Value2"]},{"Key2": ["Value3"]}]



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResourceGroup in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

