package Paws::Neptune::EngineDefaults;
  use Moose;
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::Parameter]', request_name => 'Parameter', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::EngineDefaults

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Neptune::EngineDefaults object:

  $service_obj->Method(Att1 => { DBParameterGroupFamily => $value, ..., Parameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Neptune::EngineDefaults object:

  $result = $service_obj->Method(...);
  $result->Att1->DBParameterGroupFamily

=head1 DESCRIPTION

Contains the result of a successful invocation of the
DescribeEngineDefaultParameters action.

=head1 ATTRIBUTES


=head2 DBParameterGroupFamily => Str

  Specifies the name of the DB parameter group family that the engine
default parameters apply to.


=head2 Marker => Str

  An optional pagination token provided by a previous EngineDefaults
request. If this parameter is specified, the response includes only
records beyond the marker, up to the value specified by C<MaxRecords> .


=head2 Parameters => ArrayRef[L<Paws::Neptune::Parameter>]

  Contains a list of engine default parameters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

