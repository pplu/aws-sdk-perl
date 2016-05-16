package Paws::Discovery::ConfigurationTag;
  use Moose;
  has ConfigurationId => (is => 'ro', isa => 'Str', xmlname => 'configurationId', request_name => 'configurationId', traits => ['Unwrapped','NameInRequest']);
  has ConfigurationType => (is => 'ro', isa => 'Str', xmlname => 'configurationType', request_name => 'configurationType', traits => ['Unwrapped','NameInRequest']);
  has Key => (is => 'ro', isa => 'Str', xmlname => 'key', request_name => 'key', traits => ['Unwrapped','NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', xmlname => 'value', request_name => 'value', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::ConfigurationTag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::ConfigurationTag object:

  $service_obj->Method(Att1 => { ConfigurationId => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::ConfigurationTag object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigurationId

=head1 DESCRIPTION

Tags for a configuration item. Tags are metadata that help you
categorize IT assets.

=head1 ATTRIBUTES


=head2 ConfigurationId => Str

  The configuration ID for the item you want to tag. You can specify a
list of keys and values.


=head2 ConfigurationType => Str

  A descriptor. For example, I<serverType>.


=head2 Key => Str

  A type of tag to filter on. For example I<serverType>.


=head2 Value => Str

  A value to filter on. For example I<key = serverType> and I<value = web
server>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

