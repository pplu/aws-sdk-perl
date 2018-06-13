
package Paws::IoT::DeleteThing;
  use Moose;
  has ExpectedVersion => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'expectedVersion');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteThing');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/things/{thingName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DeleteThingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteThing - Arguments for method DeleteThing on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteThing on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteThing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteThing.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DeleteThingResponse = $iot->DeleteThing(
      ThingName       => 'MyThingName',
      ExpectedVersion => 1,               # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeleteThing>

=head1 ATTRIBUTES


=head2 ExpectedVersion => Int

The expected version of the thing record in the registry. If the
version of the record in the registry does not match the expected
version specified in the request, the C<DeleteThing> request is
rejected with a C<VersionConflictException>.



=head2 B<REQUIRED> ThingName => Str

The name of the thing to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteThing in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

