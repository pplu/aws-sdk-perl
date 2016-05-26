
package Paws::Discovery::CreateTags;
  use Moose;
  has ConfigurationIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'configurationIds' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::Tag]', traits => ['NameInRequest'], request_name => 'tags' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::CreateTagsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::CreateTags - Arguments for method CreateTags on Paws::Discovery

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTags on the 
AWS Application Discovery Service service. Use the attributes of this class
as arguments to method CreateTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTags.

As an example:

  $service_obj->CreateTags(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationIds => ArrayRef[Str]

A list of configuration items that you want to tag.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::Discovery::Tag>]

Tags that you want to associate with one or more configuration items.
Specify the tags that you want to create in a I<key>-I<value> format.
For example:

C<{"key": "serverType", "value": "webServer"}>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTags in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

