package Paws::DocDB::EngineDefaults;
  use Moose;
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Parameter]', request_name => 'Parameter', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::EngineDefaults

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DocDB::EngineDefaults object:

  $service_obj->Method(Att1 => { DBParameterGroupFamily => $value, ..., Parameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DocDB::EngineDefaults object:

  $result = $service_obj->Method(...);
  $result->Att1->DBParameterGroupFamily

=head1 DESCRIPTION

Contains the result of a successful invocation of the
C<DescribeEngineDefaultClusterParameters> operation.

=head1 ATTRIBUTES


=head2 DBParameterGroupFamily => Str

  The name of the DB cluster parameter group family to return the engine
parameter information for.


=head2 Marker => Str

  An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 Parameters => ArrayRef[L<Paws::DocDB::Parameter>]

  The parameters of a particular DB cluster parameter group family.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

