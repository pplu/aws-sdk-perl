package Paws::Greengrass::Resource;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ResourceDataContainer => (is => 'ro', isa => 'Paws::Greengrass::ResourceDataContainer');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::Resource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::Resource object:

  $service_obj->Method(Att1 => { Id => $value, ..., ResourceDataContainer => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::Resource object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Information about a resource.

=head1 ATTRIBUTES


=head2 Id => Str

  The resource ID, used to refer to a resource in the Lambda function
configuration. Max length is 128 characters with pattern
''[a-zA-Z0-9:_-]+''. This must be unique within a Greengrass group.


=head2 Name => Str

  The descriptive resource name, which is displayed on the AWS IoT
Greengrass console. Max length 128 characters with pattern
''[a-zA-Z0-9:_-]+''. This must be unique within a Greengrass group.


=head2 ResourceDataContainer => L<Paws::Greengrass::ResourceDataContainer>

  A container of data for all resource types.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

