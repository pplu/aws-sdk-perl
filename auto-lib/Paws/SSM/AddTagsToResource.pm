
package Paws::SSM::AddTagsToResource;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddTagsToResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::AddTagsToResourceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::AddTagsToResource - Arguments for method AddTagsToResource on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddTagsToResource on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method AddTagsToResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddTagsToResource.

As an example:

  $service_obj->AddTagsToResource(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The resource ID you want to tag.



=head2 B<REQUIRED> ResourceType => Str

Specifies the type of resource you are tagging.

Valid values are: C<"ManagedInstance">, C<"MaintenanceWindow">, C<"Parameter">

=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::SSM::Tag>]

One or more tags. The value parameter is required, but if you don't
want the tag to have a value, specify the parameter with no value, and
we set the value to an empty string.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddTagsToResource in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

