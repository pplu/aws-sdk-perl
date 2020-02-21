
package Paws::DeviceFarm::GetTestGridSession;
  use Moose;
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn' );
  has SessionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionArn' );
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTestGridSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::GetTestGridSessionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetTestGridSession - Arguments for method GetTestGridSession on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTestGridSession on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method GetTestGridSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTestGridSession.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    my $GetTestGridSessionResult = $devicefarm->GetTestGridSession(
      ProjectArn => 'MyDeviceFarmArn',    # OPTIONAL
      SessionArn => 'MyDeviceFarmArn',    # OPTIONAL
      SessionId  => 'MyResourceId',       # OPTIONAL
    );

    # Results:
    my $TestGridSession = $GetTestGridSessionResult->TestGridSession;

    # Returns a L<Paws::DeviceFarm::GetTestGridSessionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/GetTestGridSession>

=head1 ATTRIBUTES


=head2 ProjectArn => Str

The ARN for the project that this session belongs to. See
CreateTestGridProject and ListTestGridProjects.



=head2 SessionArn => Str

An ARN that uniquely identifies a TestGridSession.



=head2 SessionId => Str

An ID associated with this session.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTestGridSession in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

