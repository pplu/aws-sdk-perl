package Paws::XRay::FaultRootCauseService;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has EntityPath => (is => 'ro', isa => 'ArrayRef[Paws::XRay::FaultRootCauseEntity]');
  has Inferred => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::FaultRootCauseService

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::FaultRootCauseService object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::FaultRootCauseService object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

A collection of fields identifying the services in a trace summary
fault.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The account ID associated to the service.


=head2 EntityPath => ArrayRef[L<Paws::XRay::FaultRootCauseEntity>]

  The path of root cause entities found on the service.


=head2 Inferred => Bool

  A Boolean value indicating if the service is inferred from the trace.


=head2 Name => Str

  The service name.


=head2 Names => ArrayRef[Str|Undef]

  A collection of associated service names.


=head2 Type => Str

  The type associated to the service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

