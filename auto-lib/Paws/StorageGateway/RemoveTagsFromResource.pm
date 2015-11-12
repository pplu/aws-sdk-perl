
package Paws::StorageGateway::RemoveTagsFromResource;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str');
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTagsFromResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::RemoveTagsFromResourceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::RemoveTagsFromResource - Arguments for method RemoveTagsFromResource on Paws::StorageGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTagsFromResource on the 
AWS Storage Gateway service. Use the attributes of this class
as arguments to method RemoveTagsFromResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTagsFromResource.

As an example:

  $service_obj->RemoveTagsFromResource(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ResourceARN => Str

  The Amazon Resource Name (ARN) of the resource you want to remove the
tags from.


=head2 TagKeys => ArrayRef[Str]

  The keys of the tags you want to remove from the specified resource. A
tag is composed of a key/value pair.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTagsFromResource in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

